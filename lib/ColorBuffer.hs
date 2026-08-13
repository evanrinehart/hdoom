{-# LANGUAGE BangPatterns #-}
module ColorBuffer where

import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Data.Vector.Primitive (Vector(..), (!))
import Data.Primitive.ByteArray

import Raylib
import Buffer8
import Palette
import RGBA

import Data.Foldable (forM_)
copyTrueColor :: Image -> Buffer8 -> Palette -> IO ()
copyTrueColor img (Buffer8 src) (Palette pal) = do
    w <- getImageWidth img
    h <- getImageHeight img
    dst <- getImageData img
    let n = w * h
    forM_ [0 .. n-1] $ \i -> do
        idx <- readByteArray src i :: IO Word8
        let RGBA clr = pal ! (fromIntegral idx)
        pokeElemOff dst i clr

{-
copyTrueColor :: Image -> Buffer8 -> Palette -> IO ()
copyTrueColor img (Buffer8 src) (Palette vec) = do
    w <- getImageWidth img
    h <- getImageHeight img
    let n = w * h
    dst_p <- getImageData img :: IO (Ptr Word32)
    let Vector _ _ palwords = vec
    withMutableByteArrayContents src $ \src_p -> do
        withByteArrayContents palwords $ \pal_p -> do -- problem is the palette is not necessarily pinned
            colorLoop dst_p src_p (castPtr pal_p) 0 n

colorLoop :: Ptr Word32 -> Ptr Word8 -> Ptr Word32 -> Int -> Int -> IO ()
colorLoop dst src pal i limit
    | i == limit = pure ()
    | otherwise = do
        idx <- peekElemOff src i
        color <- peekElemOff pal (fromIntegral idx)
        pokeElemOff dst i color
        colorLoop dst src pal (i + 1) limit
-}
