{-# LANGUAGE GeneralizedNewtypeDeriving #-}
module Fix16 (
    Fix16(..),
    fromInt32,
    fromInt16,
    toDouble,
    integerPart,
    integerPart32,
    (//)) where

import Data.Int
import Data.Bits
import Data.Ratio
import Data.Char (intToDigit)
import Data.Vector.Primitive (Prim)

import GHC.Stack

newtype Fix16 = Fix16 Int32 deriving (Eq, Ord, Bits, Prim, Bounded)

scale_bits :: Int
scale_bits = 16

scale_i = 2 ^ scale_bits
scale_d = 2 ^ scale_bits
scale_i32 = 2 ^ scale_bits

fracmask :: Int32
fracmask = scale_i32 - 1

unit :: Int32
unit = 1 * scale_i32

instance Num Fix16 where
    Fix16 a + Fix16 b = Fix16 (a + b)
    Fix16 a - Fix16 b = Fix16 (a - b)
    Fix16 a * Fix16 b = Fix16 (fixedMul a b)
    negate (Fix16 a) = Fix16 (negate a)
    abs (Fix16 a) = Fix16 (abs a)
    signum (Fix16 a) = Fix16 (signum a * scale_i32)
    fromInteger z
        | z < -32768 = Fix16 minBound
        | z > 32767 = Fix16 maxBound
        | otherwise = Fix16 (fromInteger z `shiftL` scale_bits)

instance Fractional Fix16 where
    Fix16 a / Fix16 b = Fix16 (fixedDiv a b)
    recip (Fix16 a) = Fix16 (fixedDiv unit a)
    fromRational q = Fix16 $ fromInteger (scale_i * numerator q `div` denominator q)

instance Real Fix16 where
    toRational (Fix16 a) = toInteger a % scale_i

instance RealFrac Fix16 where
    properFraction (Fix16 a) =
        let (q, r) = quotRem a scale_i32 in
        (fromIntegral q, Fix16 r)

instance Show Fix16 where
    --showsPrec d (Fix16 2147483647) = showString "32768⁻"
    showsPrec d (Fix16 a) =
        let (i,frac) = quotRem a scale_i32 in
        if frac == 0
            then shows i . showString ".0"
            else
                let decs = map intToDigit $ extractDecimals (abs frac) in
                if frac < 0
                    then showString "-" . shows (abs i) . showString "." . showString decs
                    else shows i . showString "." . showString decs


(//) :: HasCallStack => Fix16 -> Fix16 -> Fix16
Fix16 a // Fix16 b = Fix16 (fixedDiv a b)

fromInt32 :: Int32 -> Fix16
fromInt32 i
    | i < -32768 = Fix16 minBound
    | i > 32767 = Fix16 maxBound
    | otherwise = Fix16 (i `shiftL` scale_bits)

fromInt16 :: Int16 -> Fix16
fromInt16 i = Fix16 (fromIntegral i `shiftL` scale_bits)

integerPart32 :: Fix16 -> Int32
integerPart32 (Fix16 a) = a `quot` scale_i32

integerPart :: Fix16 -> Int
integerPart (Fix16 a) = fromIntegral (a `quot` scale_i32)

fractionalPart :: Fix16 -> Fix16
fractionalPart (Fix16 a) = Fix16 (a .&. fracmask)

-- could be more efficient
toDouble :: Fix16 -> Double
toDouble (Fix16 a) = encodeFloat (toInteger a) (-scale_bits)

fixedMul :: Int32 -> Int32 -> Int32
fixedMul x y = 
    let x' = fromIntegral x :: Int64
        y' = fromIntegral y :: Int64
        z' = x' * y'
    in fromIntegral (z' `shiftR` scale_bits) where

fixedDiv :: HasCallStack => Int32 -> Int32 -> Int32
fixedDiv a 0 = error "fixed point division by zero"
fixedDiv a b
    -- 14 is magic right now
    | abs a `shiftR` 14 >= abs b = if xor a b < 0 then minBound else maxBound
    | otherwise = fixedDiv2 a b

fixedDiv2 :: HasCallStack => Int32 -> Int32 -> Int32
fixedDiv2 a b = 
        let a' = fromIntegral a :: Double
            b' = fromIntegral b :: Double
            c' = (a' / b') * scale_d
        in
            if c' < -2147483648.0 || c' > 2147483648.0
                then error "fixed point division by zero (case 2)"
                else truncate c'

-- the input is non-negative and less than unit
extractDecimals :: Int32 -> [Int]
extractDecimals 0 = []
extractDecimals frac = fromIntegral q : extractDecimals r where (q,r) = (10 * frac) `divMod` scale_i32
