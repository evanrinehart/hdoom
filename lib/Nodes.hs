{-# LANGUAGE PatternSynonyms #-}
module Nodes where

import Data.Bits
import Data.Word

import Fix16
import Four

data Node = Node
    { node_x :: Fix16
    , node_y :: Fix16
    , node_dx :: Fix16
    , node_dy :: Fix16
    , node_box0 :: Four Fix16
    , node_box1 :: Four Fix16
    , node_child0 :: Word32
    , node_child1 :: Word32 }
        deriving (Show)

data NodeRef a = NodeRef a | SubsectorRef a

pattern NF_SUBSECTOR :: Int
pattern NF_SUBSECTOR = 0x8000

analyzeNodeNumber :: Int -> NodeRef Int
analyzeNodeNumber i
    | i .&. NF_SUBSECTOR /= 0 = SubsectorRef (i .&. (complement NF_SUBSECTOR))
    | otherwise = NodeRef i
