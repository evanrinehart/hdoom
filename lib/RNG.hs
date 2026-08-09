module RNG (RNG, runRNG, newRNG, resetRNG) where

import Data.Primitive.ByteArray
import Data.Primitive.PrimVar
import Data.Word
import Data.Bits
import GHC.Exts (RealWorld)

newtype RNG = RNG (PrimVar RealWorld Int)

newRNG :: IO RNG
newRNG = RNG <$> newPrimVar 0

runRNG :: RNG -> IO Int
runRNG (RNG var) = do
    i <- readPrimVar var
    writePrimVar var (succ i .&. 255)
    let w = indexByteArray random_numbers i :: Word8
    pure (fromIntegral w)

resetRNG :: RNG -> IO ()
resetRNG (RNG var) = writePrimVar var 0

random_numbers :: ByteArray
random_numbers = byteArrayFromListN 256 (take 256 sequence_A259233)

-- https://oeis.org/A259233
sequence_A259233 :: [Word8]
sequence_A259233 = (map postprocess . iterate f) 1 where
    a = 134775813
    n = 2^24
    f x = (a * x + 1) `mod` n
    postprocess x = fromIntegral (x `div` 65536)
