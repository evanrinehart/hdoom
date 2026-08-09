{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
module Name8 where

import Data.String
import Data.Word
import Data.Bits
import Data.Hashable (Hashable)
import Data.Primitive (Prim)
import Data.Char
import Data.List (unfoldr)
import Data.Coerce

-- for packed 8-byte null padded strings

{- Name8, zero padded strings up to length 8, packed into a word so it is primitive -}
newtype Name8 = Name8 Word64
    deriving (Eq, Ord, Hashable, Prim)

packWord64BE :: [Word8] -> Word64
packWord64BE = foldl' (\acc byte -> acc `shiftL` 8 .|. byte) 0 . map fromIntegral . take 8

unpackWord64BE :: Word64 -> [Word8]
unpackWord64BE = reverse . map fromIntegral . take 8 . unfoldr (\w -> Just (w .&. 255, w `shiftR` 8))

--name8FromByteString :: ByteString -> Name8
--name8FromByteString = Name8 . packWord64LE . BS.unpack . BS.takeWhile (/= 0) . BS.take 8

instance Show Name8 where
    showsPrec d (Name8 w) = showParen (d > 10) (showString "Name8 " . showsPrec 11 ((map chr . map fromIntegral . takeWhile (/= 0) . unpackWord64BE) w))

instance IsString Name8 where
    fromString = Name8 . packWord64BE . map fromIntegral . map ord . take 8 . (++ repeat '\0')

toString :: Name8 -> String
toString = map chr . map fromIntegral . takeWhile (/= 0) . unpackWord64BE . coerce
