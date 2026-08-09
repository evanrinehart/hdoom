module Buffer8 where

import GHC.Exts (RealWorld)
import Data.Primitive.ByteArray
import Data.Word

newtype Buffer8 = Buffer8 (MutableByteArray RealWorld)

newBuffer8 :: Int -> IO Buffer8
newBuffer8 size = do
    arr <- newPinnedByteArray size
    return (Buffer8 arr)
