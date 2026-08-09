{-# LANGUAGE BangPatterns #-}
module Draw where

import Data.Primitive.ByteArray
import Data.Word
import qualified Data.ByteString.Short as SBS
import Data.Coerce
import Control.Exception

import Patch
import FrameBuffer
import Buffer8

data DrawError = DrawError String deriving Show
instance Exception DrawError

drawPatch :: FrameBuffer -> Int -> Int -> Patch -> IO ()
drawPatch fb x y (Patch (PatchHeader width height left top _) columns) = do
    let xx = x - left
    let yy = y - top
    let right = xx + width
    let bottom = yy + height
    if isOutOfBounds xx yy width height fb
        then throwIO (DrawError ("drawPatch: drawing out of bounds " ++ show (xx, yy, right, bottom)))
        else mapM_ (\(PatchColumn colx posts) -> drawColumn fb (xx + colx) yy posts) columns

drawColumn :: FrameBuffer -> Int -> Int -> [Post] -> IO ()
drawColumn (FrameBuffer fbw _ _ buf) x y posts = go posts where
    go (Post topdelta pixels : more) = do
        let start = fbw * (y + topdelta) + x
        let count = SBS.length pixels
        copyVerticalBytes buf fbw start count (coerce pixels)
        go more
    go [] = pure ()

copyVerticalBytes :: Buffer8 -> Int -> Int -> Int -> ByteArray -> IO ()
copyVerticalBytes (Buffer8 out) width start count bytes = go start 0 where
    go dst i
        | i == count = pure ()
        | otherwise = do
            let !w8 = indexByteArray bytes i :: Word8
            if dst < 0 then error ("dst negative " ++ show (dst)) else if dst >= (320*200) then error ("dst too large " ++ show (dst - 320*200)) else pure ()
            writeByteArray out dst w8
            go (dst + width) (i + 1)
