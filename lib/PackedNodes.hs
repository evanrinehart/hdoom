{-# LANGUAGE RankNTypes #-}
module PackedNodes where

import Data.Int
import Data.Word
import Data.Bits
import Data.Primitive.ByteArray
import Control.Monad.ST
import Control.Monad (zipWithM_)

import Four
import Nodes
import Fix16
import Geometry

data PackedNodes = PackedNodes !Int !ByteArray

packNodes :: Int -> [Node] -> PackedNodes
packNodes n nodes = PackedNodes n (createByteArray (56 * n) fill) where
    fill arr = zipWithM_ (unsafeWriteNode arr) [0 .. n-1] nodes

unpackNodes :: PackedNodes -> [Node]
unpackNodes (PackedNodes n arr) = map (unsafeGetNode arr) [0 .. n-1]

-- accessing the packed nodes directly
unsafeGetChild0 :: ByteArray -> Int -> Word32
unsafeGetChild0 arr i = indexByteArray arr (14*i + 12)

unsafeGetChild1 :: ByteArray -> Int -> Word32
unsafeGetChild1 arr i = indexByteArray arr (14*i + 13)

unsafeGetBox0 :: ByteArray -> Int -> Four Fix16
unsafeGetBox0 arr i = 
    let base = 14 * i in
    Four
        (indexByteArray arr (base + 4))
        (indexByteArray arr (base + 5))
        (indexByteArray arr (base + 6))
        (indexByteArray arr (base + 7))

unsafeGetBox1 :: ByteArray -> Int -> Four Fix16
unsafeGetBox1 arr i = 
    let base = 14 * i in
    Four
        (indexByteArray arr (base + 8))
        (indexByteArray arr (base + 9))
        (indexByteArray arr (base + 10))
        (indexByteArray arr (base + 11))

unsafeGetDivline :: ByteArray -> Int -> Line Fix16
unsafeGetDivline arr i =
    let base = 14 * i in
    Line
        (indexByteArray arr (base + 0))
        (indexByteArray arr (base + 1))
        (indexByteArray arr (base + 2))
        (indexByteArray arr (base + 3))

unsafeGetNode :: ByteArray -> Int -> Node
unsafeGetNode arr i =
    let Line x y dx dy = unsafeGetDivline arr i
        box0 = unsafeGetBox0 arr i
        box1 = unsafeGetBox1 arr i
        child0 = unsafeGetChild0 arr i
        child1 = unsafeGetChild1 arr i
    in Node x y dx dy box0 box1 child0 child1

unsafeWriteNode :: MutableByteArray s -> Int -> Node -> ST s ()
unsafeWriteNode arr i node = do
    let base = 14 * i
    writeByteArray arr (base + 0) (node_x node)
    writeByteArray arr (base + 1) (node_y node)
    writeByteArray arr (base + 2) (node_dx node)
    writeByteArray arr (base + 3) (node_dy node)
    let Four a b c d = node_box0 node
    writeByteArray arr (base + 4) a
    writeByteArray arr (base + 5) b
    writeByteArray arr (base + 6) c
    writeByteArray arr (base + 7) d
    let Four x y z w = node_box1 node
    writeByteArray arr (base + 8) x
    writeByteArray arr (base + 9) y
    writeByteArray arr (base + 10) z
    writeByteArray arr (base + 11) w
    writeByteArray arr (base + 12) (node_child0 node)
    writeByteArray arr (base + 13) (node_child1 node)


-- bounds checking accessors, recommended
getNode :: PackedNodes -> Int -> Node
getNode (PackedNodes n arr) i
    | i < 0 || i >= n = error $ "PackedNodes.getNode: index out of bounds (" ++ show i ++ ")"
    | otherwise = unsafeGetNode arr i

getDivline :: PackedNodes -> Int -> Line Fix16
getDivline (PackedNodes n arr) i
    | i < 0 || i >= n = error $ "PackedNodes.getDivline: index out of bounds (" ++ show i ++ ")"
    | otherwise = unsafeGetDivline arr i
