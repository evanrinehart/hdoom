module Skill where

import Data.Bits

data Skill =
    SK_Baby |
    SK_Easy |
    SK_Medium |
    SK_Hard |
    SK_Nightmare
        deriving (Eq,Show)

skillFlag :: Skill -> Int
skillFlag SK_Baby = 1
skillFlag SK_Easy = 1
skillFlag SK_Medium = 2
skillFlag SK_Hard = 4
skillFlag SK_Nightmare = 4

enabledAtSkill :: Skill -> Int -> Bool
enabledAtSkill skill flags = skillFlag skill .&. flags /= 0
