module LoadWord where

import Data.Word
import Data.Int
import Data.Bits
import Data.ByteString (ByteString)
import Data.ByteString.Unsafe (unsafeIndex)

loadWord8 :: Int -> ByteString -> Word8
loadWord8 i bs = unsafeIndex bs i

loadWord64LE :: Int -> ByteString -> Word64
loadWord64LE i bs =
    let w0 = unsafeIndex bs (i + 0)
        w1 = unsafeIndex bs (i + 1)
        w2 = unsafeIndex bs (i + 2)
        w3 = unsafeIndex bs (i + 3)
        w4 = unsafeIndex bs (i + 4)
        w5 = unsafeIndex bs (i + 5)
        w6 = unsafeIndex bs (i + 6)
        w7 = unsafeIndex bs (i + 7)
    in word64 w7 w6 w5 w4 w3 w2 w1 w0

loadWord32LE :: Int -> ByteString -> Word32
loadWord32LE i bs =
    let w0 = unsafeIndex bs (i + 0)
        w1 = unsafeIndex bs (i + 1)
        w2 = unsafeIndex bs (i + 2)
        w3 = unsafeIndex bs (i + 3)
    in word32 w3 w2 w1 w0

loadWord16LE :: Int -> ByteString -> Word16
loadWord16LE i bs =
    let w0 = unsafeIndex bs (i + 0)
        w1 = unsafeIndex bs (i + 1)
    in word16 w1 w0

loadWord24BE :: Word8 -> Int -> ByteString -> Word32
loadWord24BE filler i bs =
    let w0 = fromIntegral (unsafeIndex bs (i + 0))
        w1 = fromIntegral (unsafeIndex bs (i + 1))
        w2 = fromIntegral (unsafeIndex bs (i + 2))
    in word32 w0 w1 w2 filler

loadWord24LE :: Word8 -> Int -> ByteString -> Word32
loadWord24LE filler i = byteSwap32 . loadWord24BE filler i

loadInt16LE :: Int -> ByteString -> Int16
loadInt16LE i = fromIntegral . loadWord16LE i

loadInt32LE :: Int -> ByteString -> Int32
loadInt32LE i = fromIntegral . loadWord32LE i

loadWord64BE :: Int -> ByteString -> Word64
loadWord64BE i = byteSwap64 . loadWord64LE i


word16 ::
    Word8 -> Word8 -> Word16
word16 w1 w0 =
    (fromIntegral w1 `shiftL` 8) .|.
    (fromIntegral w0)

word32 ::
    Word8 -> Word8 -> Word8 -> Word8 -> Word32
word32 w3 w2 w1 w0 =
    (fromIntegral w3 `shiftL` 24) .|.
    (fromIntegral w2 `shiftL` 16) .|.
    (fromIntegral w1 `shiftL` 8) .|.
    (fromIntegral w0)

word64 ::
    Word8 -> Word8 -> Word8 -> Word8 ->
    Word8 -> Word8 -> Word8 -> Word8 -> Word64
word64 w7 w6 w5 w4 w3 w2 w1 w0 =
    (fromIntegral w7 `shiftL` 56) .|.
    (fromIntegral w6 `shiftL` 48) .|.
    (fromIntegral w5 `shiftL` 40) .|.
    (fromIntegral w4 `shiftL` 32) .|.
    (fromIntegral w3 `shiftL` 24) .|.
    (fromIntegral w2 `shiftL` 16) .|.
    (fromIntegral w1 `shiftL` 8) .|.
    (fromIntegral w0)
