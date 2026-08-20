module PackWord where

import Data.Word
import Data.Int
import Data.Bits
import Data.Primitive.ByteArray
import Control.Monad.ST

import LoadWord

putWord8 :: MutableByteArray s -> Int -> Word8 -> ST s ()
putWord8 mut i x = writeByteArray mut i x

putWord16BE :: MutableByteArray s -> Int -> Word16 -> ST s ()
putWord16BE mut i x = do
    let w1 = fromIntegral (x `shiftR` 8) :: Word8
    let w0 = fromIntegral (x .&. 255) :: Word8
    writeByteArray mut i w1
    writeByteArray mut (i+1) w0

putWord32BE :: MutableByteArray s -> Int -> Word32 -> ST s ()
putWord32BE mut i x = do
    let w3 = fromIntegral (x `shiftR` 24 .&. 255) :: Word8
    let w2 = fromIntegral (x `shiftR` 16 .&. 255) :: Word8
    let w1 = fromIntegral (x `shiftR` 8  .&. 255) :: Word8
    let w0 = fromIntegral (x `shiftR` 0  .&. 255) :: Word8
    writeByteArray mut i w3
    writeByteArray mut (i+1) w2
    writeByteArray mut (i+2) w1
    writeByteArray mut (i+3) w0

getWord8 :: ByteArray -> Int -> Word8
getWord8 arr i = indexByteArray arr i

getWord16BE :: ByteArray -> Int -> Word16
getWord16BE arr i = 
    let w1 = indexByteArray arr i
        w0 = indexByteArray arr (i+1)
    in word16 w1 w0

getWord32BE :: ByteArray -> Int -> Word32
getWord32BE arr i = 
    let w3 = indexByteArray arr i
        w2 = indexByteArray arr (i+1)
        w1 = indexByteArray arr (i+2)
        w0 = indexByteArray arr (i+3)
    in word32 w3 w2 w1 w0

-- signed ints
putInt8 :: MutableByteArray s -> Int -> Int8 -> ST s ()
putInt8 mut i = putWord8 mut i . fromIntegral

putInt16BE :: MutableByteArray s -> Int -> Int16 -> ST s ()
putInt16BE mut i = putWord16BE mut i . fromIntegral

putInt32BE :: MutableByteArray s -> Int -> Int32 -> ST s ()
putInt32BE mut i = putWord32BE mut i . fromIntegral

getInt8 :: ByteArray -> Int -> Int8
getInt8 arr = fromIntegral . getWord8 arr

getInt16BE :: ByteArray -> Int -> Int16
getInt16BE arr = fromIntegral . getWord16BE arr

getInt32BE :: ByteArray -> Int -> Int32
getInt32BE arr = fromIntegral . getWord32BE arr
