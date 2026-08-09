{-# LANGUAGE DuplicateRecordFields #-}
module Level where

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
    { pos_x :: Int
    , pos_y :: Int
    , angle :: Int -- degrees from east
    , doomed_num :: Int
    , flags :: Int }
        deriving Show

data Level = Level
    { vertices :: [Vertex]
    , linedefs :: [LineDef]
    , sidedefs :: [SideDef]
    , sectors :: [Sector]
    , things :: [Thing] }
        deriving Show
