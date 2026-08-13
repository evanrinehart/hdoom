module Geometry where

import Fix16

import Data.Int
import Data.Bits

data Line a = Line !a !a !a !a
    deriving (Eq, Show)

data OnSide = FrontSide | BackSide | OnLine
    deriving (Eq, Ord, Show)

-- which side of a line is point x y on, original buggy version
p_DivlineSide :: Fix16 -> Fix16 -> Line Fix16 -> OnSide
p_DivlineSide x y l@(Line lx ly dx dy)
    | dx == 0 = case compare x lx of
        LT -> if dy > 0 then BackSide else FrontSide
        EQ -> OnLine
        GT -> if dy < 0 then BackSide else FrontSide
    | dy == 0 = buggyHorizontalSide x y ly dx
    | otherwise = 
        let ex = x - lx
            ey = y - ly
            left = (dy `shiftR` 16) * (ex `shiftR` 16)
            right = (ey `shiftR` 16) * (dx `shiftR` 16)
        in case compare right left of
            LT -> FrontSide
            EQ -> OnLine
            GT -> BackSide

buggyHorizontalSide :: (Num a, Ord a) => a -> a -> a -> a -> OnSide
buggyHorizontalSide x y ly dx
    | x == ly = OnLine -- presumably a mistake, should compare y and ly
    | y <= ly = if dx < 0 then BackSide else FrontSide
    | otherwise = if dx > 0 then BackSide else FrontSide

-- return fractional intercept point along first line
p_InterceptVector2 :: Line Fix16 -> Line Fix16 -> Fix16
p_InterceptVector2 (Line vx vy dx dy) (Line ux uy ex ey) =
    let numer = ((vx - ux) `shiftR` 8) * dy + ((uy - vy) `shiftR` 8) * dx
        denom = (dy `shiftR` 8) * ex - (dx `shiftR` 8) * ey
    in if denom == 0 then 0 else numer / denom

-- this version has no bug
divlineSide :: (Ord a, Num a, Bits a) => a -> a -> Line a -> OnSide
divlineSide x y (Line lx ly dx dy)
    | dx == 0 = case compare x lx of
        LT -> if dy > 0 then BackSide else FrontSide
        EQ -> OnLine
        GT -> if dy < 0 then BackSide else FrontSide
    | dy == 0 = case compare y ly of
        LT -> if dx < 0 then BackSide else FrontSide
        EQ -> OnLine
        GT -> if dx > 0 then BackSide else FrontSide
    | otherwise = 
        let ex = x - lx
            ey = y - ly
            left = (dy `shiftR` 16) * (ex `shiftR` 16)
            right = (ey `shiftR` 16) * (dx `shiftR` 16)
        in case compare right left of
            LT -> FrontSide
            EQ -> OnLine
            GT -> BackSide

-- This is like divlineSide but always returns one side or the other
-- False = Front
r_PointOnSide :: Fix16 -> Fix16 -> Line Fix16 -> Bool
r_PointOnSide x y (Line lx ly dx dy)
    | dx == 0 = if x <= lx then dy > 0 else dy < 0
    | dy == 0 = if y <= ly then dx < 0 else dx > 0
    | otherwise = 
        let ex = x - lx
            ey = y - ly in
        if dy `xor` dx `xor` ex `xor` ey < 0
            then dy `xor` ex < 0
            else ey * (dx `shiftR` 16) < (dy `shiftR` 16) * ex
