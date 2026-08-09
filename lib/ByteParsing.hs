{-# LANGUAGE BangPatterns #-}
module ByteParsing where

import Data.Word
import Data.Int
import Data.Bits
import Control.Monad (guard)
import qualified Data.ByteString as BS
import Data.ByteString (ByteString)
import Data.ByteString.Unsafe (unsafeIndex)
import Data.ByteString.Internal (ByteString(..))
import System.IO.Unsafe (unsafePerformIO)
import Foreign.Storable
import Foreign.ForeignPtr

import RGBA

word16 :: Word8 -> Word8 -> Word16
word16 w1 w0 =
    (fromIntegral w1 `shiftL` 8) .|.
    (fromIntegral w0)

word32 :: Word8 -> Word8 -> Word8 -> Word8 -> Word32
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

takeWord64BE :: (Word64 -> a) -> ByteString -> Maybe (a, ByteString)
takeWord64BE f bs = do
    let (l,r) = BS.splitAt 8 bs
    guard (BS.length l == 8)
    let w7 = l `unsafeIndex` 0
    let w6 = l `unsafeIndex` 1
    let w5 = l `unsafeIndex` 2
    let w4 = l `unsafeIndex` 3
    let w3 = l `unsafeIndex` 4
    let w2 = l `unsafeIndex` 5
    let w1 = l `unsafeIndex` 6
    let w0 = l `unsafeIndex` 7
    let x = f $ word64 w7 w6 w5 w4 w3 w2 w1 w0
    x `seq` pure (x, r)

takeWord32LE :: ByteString -> Maybe (Word32, ByteString)
takeWord32LE bs = do
    let (l,r) = BS.splitAt 4 bs
    guard (BS.length l == 4)
    let w3 = l `unsafeIndex` 3
    let w2 = l `unsafeIndex` 2
    let w1 = l `unsafeIndex` 1
    let w0 = l `unsafeIndex` 0
    let x = word32 w3 w2 w1 w0
    x `seq` pure (x, r)

takeWord16LE :: ByteString -> Maybe (Word16, ByteString)
takeWord16LE bs = do
    let (l,r) = BS.splitAt 2 bs
    guard (BS.length l == 2)
    let w1 = l `unsafeIndex` 1
    let w0 = l `unsafeIndex` 0
    let x = word16 w1 w0
    x `seq` pure (x,r)

takeInt32LE :: ByteString -> Maybe (Int32, ByteString)
takeInt32LE = fmap (\(a,b) -> (fromIntegral a, b)) . takeWord32LE

takeInt16LE :: ByteString -> Maybe (Int16, ByteString)
takeInt16LE = fmap (\(a,b) -> (fromIntegral a, b)) . takeWord16LE

takeInt :: ByteString -> Maybe (Int, ByteString)
takeInt = fmap (\(a,b) -> (fromIntegral a, b)) . takeInt32LE

takeShort :: ByteString -> Maybe (Int, ByteString)
takeShort = fmap (\(a,b) -> (fromIntegral a, b)) . takeInt16LE

takeUInt :: ByteString -> Maybe (Int, ByteString)
takeUInt = fmap (\(a,b) -> (fromIntegral a, b)) . takeWord32LE

takeUShort :: ByteString -> Maybe (Int, ByteString)
takeUShort = fmap (\(a,b) -> (fromIntegral a, b)) . takeWord16LE

--takeInt :: ByteString -> Maybe (Int, ByteString)
--takeInt = fmap (\(w,r) -> (fromIntegral (fromIntegral w :: Int32), r)) . takeWord32LE 

takeBytes :: Int -> ByteString -> Maybe (ByteString, ByteString)
takeBytes n bs = do
    let (l,r) = BS.splitAt n bs
    guard (BS.length l == n)
    pure (l,r)

loadWord8 :: Int -> ByteString -> Word8
loadWord8 offset bs = bs `unsafeIndex` offset

loadWord16LE :: Int -> ByteString -> Word16
loadWord16LE offset (PS base _ _) = unsafePerformIO $ withForeignPtr base $ \ptr -> do
    w0 <- peekByteOff ptr offset
    w1 <- peekByteOff ptr (offset + 1)
    pure (word16 w1 w0)

loadWordRGB :: Int -> ByteString -> RGBA
loadWordRGB offset (PS base _ _) = unsafePerformIO $ withForeignPtr base $ \ptr -> do
    r <- peekByteOff ptr offset
    g <- peekByteOff ptr (offset + 1)
    b <- peekByteOff ptr (offset + 2)
    pure (rgba r g b 255)

loadWord32LE :: Int -> ByteString -> Word32
loadWord32LE offset (PS base _ _) = unsafePerformIO $ withForeignPtr base $ \ptr -> do
    w0 <- peekByteOff ptr offset
    w1 <- peekByteOff ptr (offset + 1)
    w2 <- peekByteOff ptr (offset + 2)
    w3 <- peekByteOff ptr (offset + 3)
    pure (word32 w3 w2 w1 w0)

loadWord64LE :: Int -> ByteString -> Word64
loadWord64LE offset (PS base _ _) = unsafePerformIO $ withForeignPtr base $ \ptr -> do
    w0 <- peekByteOff ptr offset
    w1 <- peekByteOff ptr (offset + 1)
    w2 <- peekByteOff ptr (offset + 2)
    w3 <- peekByteOff ptr (offset + 3)
    w4 <- peekByteOff ptr (offset + 4)
    w5 <- peekByteOff ptr (offset + 5)
    w6 <- peekByteOff ptr (offset + 6)
    w7 <- peekByteOff ptr (offset + 7)
    pure (word64 w7 w6 w5 w4 w3 w2 w1 w0)

loadWord64BE :: Int -> ByteString -> Word64
loadWord64BE off bs = byteSwap64 (loadWord64LE off bs)

loadInt16LE :: Int -> ByteString -> Int16
loadInt16LE off bs = fromIntegral (loadWord16LE off bs)

loadInt32LE :: Int -> ByteString -> Int32
loadInt32LE off bs = fromIntegral (loadWord32LE off bs)

loadInt64LE :: Int -> ByteString -> Int64
loadInt64LE off bs = fromIntegral (loadWord64LE off bs)

chunkByteString :: Int -> BS.ByteString -> [BS.ByteString]
chunkByteString n bs =
    let (l,r) = BS.splitAt n bs in
    if BS.length l < n
        then if BS.null l then [] else [l]
        else l : chunkByteString n r

mapByteStringChunks :: Int -> (BS.ByteString -> a) -> BS.ByteString -> Maybe [a]
mapByteStringChunks n f = go where
    go bs
        | BS.length bs `mod` n == 0 = Just (loop bs)
        | otherwise = Nothing
    loop bs
        | BS.null bs = []
        | otherwise = let (l,r) = BS.splitAt n bs in f l : loop r
