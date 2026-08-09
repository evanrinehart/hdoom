{-# LANGUAGE OverloadedStrings #-}
module KnownIWADs where

import AbstractFilePath

data GameMode = GMShareware | GMRegistered | GMRetail | GMCommercial | GMIndeterminate deriving Show
data GameMission = MissionDoom1 | MissionDoom2 | MissionTNT | MissionPlutonia deriving Show
data Language = English | French | German deriving Show
data KnownIWAD = KnownIWAD
    { iwad_filename :: OsString
    , iwad_language :: Language
    , iwad_gamemode :: GameMode
    , iwad_gamemission :: GameMission
    , iwad_title :: String }
        deriving Show

known_iwads =
    [ KnownIWAD "doom2f.wad" French GMCommercial MissionDoom2 "DOOM 2"
    , KnownIWAD "doom2.wad" English GMCommercial MissionDoom2 "DOOM 2"
    , KnownIWAD "plutonia.wad" English GMCommercial MissionPlutonia "Plutonia Experiment"
    , KnownIWAD "tnt.wad" English GMCommercial MissionTNT "TNT Evilution"
    , KnownIWAD "doomu.wad" English GMRetail MissionDoom1 "Ultimate DOOM"
    , KnownIWAD "doom.wad" English GMRegistered MissionDoom1 "DOOM"
    , KnownIWAD "doom1.wad" English GMShareware MissionDoom1 "DOOM (Shareware)"
    ]

