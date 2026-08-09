module Palette where

import Data.ByteString (ByteString)
import Data.Vector.Primitive (Vector)
import qualified Data.Vector.Primitive as VP
import RGBA
import ByteParsing

newtype Palette = Palette (Vector RGBA) deriving (Show)

decodePalette :: ByteString -> Palette
decodePalette bs = Palette (VP.fromListN 256 (go 0)) where
    limit = 3 * 256
    go i
        | i == limit = []
        | otherwise = loadWordRGB i bs : go (i + 3)
