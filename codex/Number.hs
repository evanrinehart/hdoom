module Number where

import Data.Ratio

data Number = Number !Int !Int
    deriving (Show, Read, Eq)

instance Ord Number where
    compare (Number i x) (Number j y) = compare i j <> compare x y

instance Num Number where
    a + b = downscale (upscale a + upscale b)
    a - b = downscale (upscale a - upscale b)
    a * b = downscale ((upscale a * upscale b) `quot` 65536)
    negate (Number i x) = Number (negate i) (negate x)
    abs (Number i x) = Number (abs i) (abs x)
    signum n = case compare n 0 of
        LT -> Number (-1) 0
        EQ -> Number 0 0
        GT -> Number 1 0
    fromInteger z = Number (fromIntegral z) 0

instance Fractional Number where
    a / b = downscale ((65536 * upscale a) `quot` upscale b)
    fromRational q = fromInteger (numerator q) / fromInteger (denominator q)

instance RealFrac Number where
    properFraction (Number i x) = (fromIntegral i, Number 0 x)

instance Real Number where
    toRational n = upscale n % 65536

toInt :: Number -> Int
toInt (Number i _) = i

toDouble :: Number -> Double
toDouble n = encodeFloat (upscale n) (-16)

upscale :: Number -> Integer
upscale (Number i x) = 65536 * toInteger i + toInteger x

downscale :: Integer -> Number
downscale z = let (q, r) = z `quotRem` 65536 in Number (fromInteger q) (fromInteger r)
