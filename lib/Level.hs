{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE PatternSynonyms #-}
module Level where

import Data.Word
import Name8

data Vertex = Vertex !Int !Int deriving Show

data LineDef = LineDef
    { point0 :: Int
    , point1 :: Int
    , flags :: Int
    , special :: Int
    , tag :: Int
    , side0 :: Int
    , side1 :: Int }
        deriving Show

data SideDef = SideDef
    { xoffset :: Int
    , yoffset :: Int
    , upper_tex :: Name8
    , middle_tex :: Name8
    , lower_tex :: Name8
    , sector_num :: Int }
        deriving Show

data Sector = Sector
    { floor_z :: Int
    , ceiling_z :: Int
    , floor_tex :: Name8
    , ceiling_tex :: Name8
    , light_level :: Int
    , special :: Int
    , tag :: Int }
        deriving Show

data Thing = Thing
    { thing_posx :: Int
    , thing_posy :: Int
    , thing_angle :: Int -- degrees from east
    , thing_doomednum :: Int
    , thing_flags :: Word32 }
        deriving Show

data Level = Level
    { vertices :: [Vertex]
    , linedefs :: [LineDef]
    , sidedefs :: [SideDef]
    , sectors :: [Sector]
    , things :: [Thing] }
        deriving Show

pattern MTF_AMBUSH :: Word32
pattern MTF_AMBUSH = 8

pattern MTF_EASY :: Word32
pattern MTF_EASY = 1

pattern MTF_MEDIUM :: Word32
pattern MTF_MEDIUM = 2

pattern MTF_HARD :: Word32
pattern MTF_HARD = 4
