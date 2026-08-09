{-# LANGUAGE GeneralizedNewtypeDeriving #-}
module Offset where

import System.IO (Handle, hSeek, SeekMode(..))
import Data.Primitive
import Data.Int

newtype Offset = Offset Int32 deriving (Prim)

instance Show Offset where
    showsPrec d (Offset i) = showsPrec d i

offsetZero :: Offset
offsetZero = Offset 0

diffOffset :: Offset -> Offset -> Int
diffOffset (Offset a) (Offset b) = fromIntegral (b - a)

plusOffset :: Offset -> Int -> Offset
plusOffset (Offset a) n = Offset (a + fromIntegral n)

hSeekOff :: Handle -> Offset -> IO ()
hSeekOff h (Offset i) = hSeek h AbsoluteSeek (toInteger i)
