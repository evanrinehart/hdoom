{-# LANGUAGE GeneralizedNewtypeDeriving #-}
module RGBA where

import Data.Word
import Data.Vector.Primitive (Prim)
import Data.Bits

newtype RGBA = RGBA Word32 deriving (Eq, Ord, Prim)

instance Show RGBA where
    showsPrec p color =
        let (r,g,b,a) = unpackRGBA color in
        showParen (p > 10) $
            showString "RGBA " .
            shows r .
            showChar ' ' .
            shows g .
            showChar ' ' .
            shows b .
            showChar ' ' .
            shows a

rgba :: Word8 -> Word8 -> Word8 -> Word8 -> RGBA
rgba r g b a = RGBA $
    (fromIntegral r) .|.
    (fromIntegral g `shiftL`  8) .|.
    (fromIntegral b `shiftL` 16) .|.
    (fromIntegral a `shiftL` 24)

rgbaToWord32LE :: RGBA -> Word32
rgbaToWord32LE (RGBA w) = w

unpackRGBA :: RGBA -> (Word8, Word8, Word8, Word8)
unpackRGBA c = (r, g, b, a) where
    r = rgba_red c
    g = rgba_green c
    b = rgba_blue c
    a = rgba_alpha c

rgba_red :: Num a => RGBA -> a
rgba_red (RGBA w) = fromIntegral (w .&. 255)

rgba_green :: Num a => RGBA -> a
rgba_green (RGBA w) = fromIntegral (w `shiftR` 8 .&. 255)

rgba_blue :: Num a => RGBA -> a
rgba_blue (RGBA w) = fromIntegral (w `shiftR` 16 .&. 255)

rgba_alpha :: Num a => RGBA -> a
rgba_alpha (RGBA w) = fromIntegral (w `shiftR` 24 .&. 255)

red    :: RGBA; red    = rgba 255   0   0 255
green  :: RGBA; green  = rgba   0 255   0 255
blue   :: RGBA; blue   = rgba   0   0 255 255
yellow :: RGBA; yellow = rgba 255 255   0 255
black  :: RGBA; black  = rgba   0   0   0 255
white  :: RGBA; white  = rgba 255 255 255 255
