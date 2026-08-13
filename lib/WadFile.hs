{-# LANGUAGE OverloadedStrings #-}
module WadFile where

import Control.Monad (join)

import Data.Vector.Primitive (Vector)
import qualified Data.Vector.Primitive as VP
import Control.Exception (evaluate)
import Data.String
import Name8
import Fix16
import Loader

import Wave
import Palette
import Patch
import Nodes
import Level

import BlobParsers

-- load array of patch names from lump PNAMES, defining patch number => patch [lump] name
loadPatchNames :: Loader (Vector Name8)
loadPatchNames = do
    pnames <- parsePNAMES <$> loadLumpByName "PNAMES" <?> "PNAMES lump"
    let n = length pnames
    let vec = VP.fromListN (length pnames) pnames
    return $! vec

-- load palettes from PLAYPAL, there should be 14
loadPalettes :: Loader [Palette]
loadPalettes = do
    blob <- loadLumpByName "PLAYPAL"
    parsePalettes blob `orFailWith` "PLAYPAL lump"

-- sounds
loadSoundLump :: Name8 -> Loader Wave
loadSoundLump name = do
    blob <- loadLumpByName name
    parseSound blob `orFailWith` ("load sound \"" ++ toString name ++ "\" failed")

-- patches (single images)
loadPatch :: String -> Loader Patch
loadPatch name = do
    blob <- loadLumpByName (fromString name)
    case parsePatch blob of
        Nothing -> fail "bad patch"
        Just x -> pure x

-- load a map
loadLevel :: String -> Loader Level
loadLevel name = do
    let msg = "loadLevel " ++ name ++ ": "
    verts <- parseVertexes <$> loadMapLump name "VERTEXES" <?> (msg ++ "bad VERTEXES")
    lines <- parseLinedefs <$> loadMapLump name "LINEDEFS" <?> (msg ++ "bad LINEDEFS")
    sides <- parseSidedefs <$> loadMapLump name "SIDEDEFS" <?> (msg ++ "bad SIDEDEFS")
    sectors <- parseSectors <$> loadMapLump name "SECTORS" <?> (msg ++ "bad SECTORS")
    things <- parseThings <$> loadMapLump name "THINGS" <?> (msg ++ "bad THINGS")
    return (Level verts lines sides sectors things)

-- load the NODES lump for level
loadNodes :: String -> Loader [Node]
loadNodes mapname = do
    blob <- loadMapLump mapname "NODES"
    nodes <- parseNodes blob `orFailWith` (mapname ++ "nodes lump")
    pure nodes

{-
loadBlockMap :: String -> Loader BlockMapData
loadBlockMap mapname = do
    blob <- loadMapLump mapname "BLOCKMAP"
    parseBlockMap blob `orFailWith` (mapname ++ "blockmap lump")
-}

orFailWith :: MonadFail m => Maybe a -> String -> m a
orFailWith (Just x) _  = pure x
orFailWith Nothing msg = fail msg

orFailWithM :: MonadFail m => m (Maybe a) -> String -> m a
orFailWithM action msg = action >>= \mx -> case mx of
    Just x -> pure x
    Nothing -> fail msg

infixl 3 <?>
(<?>) :: MonadFail m => m (Maybe a) -> String -> m a
(<?>) = orFailWithM
