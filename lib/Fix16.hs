{-# LANGUAGE GeneralizedNewtypeDeriving #-}
module Fix16 (Fix16(..), fromInt32, toDouble, (//)) where

import Data.Int
import Data.Bits
import Data.Ratio
import Data.Char (intToDigit)

import GHC.Stack

newtype Fix16 = Fix16 Int32 deriving (Eq, Ord, Bits)

scale_bits :: Num a => a
scale_bits = 16

scale :: Num a => a
scale = 2 ^ scale_bits

unit :: Num a => a
unit = 1 * scale

instance Num Fix16 where
    Fix16 a + Fix16 b = Fix16 (a + b)
    Fix16 a - Fix16 b = Fix16 (a - b)
    Fix16 a * Fix16 b = Fix16 (fixedMul a b)
    negate (Fix16 a) = Fix16 (negate a)
    abs (Fix16 a) = Fix16 (abs a)
    signum (Fix16 a) = Fix16 (signum a * scale)
    fromInteger z = Fix16 (fromInteger z * scale)

instance Fractional Fix16 where
    Fix16 a / Fix16 b = Fix16 (fixedDiv a b)
    recip (Fix16 a) = Fix16 (fixedDiv unit a)
    fromRational q = Fix16 $ fromInteger (scale * numerator q `div` denominator q)

instance Real Fix16 where
    toRational (Fix16 a) = toInteger a % scale

instance RealFrac Fix16 where
    properFraction (Fix16 a) =
        let (q, r) = quotRem a scale in
        (fromIntegral q, Fix16 r)

instance Show Fix16 where
    showsPrec d (Fix16 a) =
        let (i,frac) = quotRem a scale in
        if frac == 0
            then shows i . showString ".0"
            else
                let decs = map intToDigit $ extractDecimals (abs frac) in
                if frac < 0
                    then showString "-" . shows (abs i) . showString "." . showString decs
                    else shows i . showString "." . showString decs


(//) :: HasCallStack => Fix16 -> Fix16 -> Fix16
Fix16 a // Fix16 b = Fix16 (fixedDiv a b)

-- becomes the same integer value, if it is representable
fromInt32 :: Int32 -> Fix16
fromInt32 a = Fix16 (a * scale)

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
            c' = (a' / b') * scale
        in
            if c' < -2147483648.0 || c' > 2147483648.0
                then error "fixed point division by zero (case 2)"
                else truncate c'

-- the input is non-negative and less than unit
extractDecimals :: Int32 -> [Int]
extractDecimals 0 = []
extractDecimals frac = fromIntegral q : extractDecimals r where (q,r) = (10 * frac) `divMod` scale
