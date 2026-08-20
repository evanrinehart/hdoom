{-# LANGUAGE PatternSynonyms #-}
module Angle where

import Data.Word
import Data.Ratio

newtype Angle = Angle Word32 deriving (Eq, Ord, Show)

instance Semigroup Angle where
    (<>) = (+)

instance Monoid Angle where
    mempty = ANG_ZERO

-- BAM group
instance Num Angle where
    Angle a + Angle b = Angle (a + b)
    Angle a - Angle b = Angle (a - b)
    (*) = error "instance Num Angle: multiplying angles"
    negate = inverseAngle
    abs ang
        | ang > ANG_180 = negate ang
        | otherwise = ang
    signum ang = error "instance Num Angle: signum of angle"
    fromInteger i = Angle (fromIntegral i)

-- 360 minus angle
inverseAngle :: Angle -> Angle
inverseAngle (Angle a) = Angle (negate a)

pattern ANG_ZERO :: Angle
pattern ANG_ZERO = Angle 0

pattern ANG_45 :: Angle
pattern ANG_45 = Angle 0x20000000

pattern ANG_90 :: Angle
pattern ANG_90 = Angle 0x40000000

pattern ANG_180 :: Angle
pattern ANG_180 = Angle 0x80000000

pattern ANG_270 :: Angle
pattern ANG_270 = Angle 0xc0000000

fromDegrees45 :: Int -> Angle
fromDegrees45 deg = (deg `div` 45) `multAngle` ANG_45

-- don't multiply by the most negative Int
multAngle :: Int -> Angle -> Angle
multAngle n (Angle a)
    | n >= 0 = Angle (fromIntegral n * a)
    | otherwise = Angle (fromIntegral (-n) * negate a)

-- warning these are too correct
angleToFrac :: Fractional a => Angle -> a
angleToFrac (Angle w) =
    let numer = toInteger w
        denom = toInteger (maxBound :: Word32)
    in fromRational (numer % denom)

vectorFromAngle :: Floating a => Angle -> (a, a)
vectorFromAngle ang =
    let theta = 2 * pi * angleToFrac ang
    in (cos theta, sin theta)
