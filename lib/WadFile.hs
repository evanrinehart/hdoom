{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE BangPatterns #-}
module WadFile where

import System.IO (Handle)
import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import qualified Data.ByteString.Short as SBS
import qualified Data.Vector as V
import Data.Vector.Primitive (Vector)
import qualified Data.Vector.Primitive as VP
import Data.List
import Data.String
import Name8
import Fix16
import Four
import Loader
import ByteParsing
import Control.Monad (guard)
import Control.Applicative ((<|>))
import Data.Maybe

import Wave
import Palette
import Patch
import Nodes
import Level

import qualified Debug.Trace

-- load array of patch names from lump PNAMES, defining patch number => patch [lump] name
loadPatchNames :: Loader (Vector Name8)
loadPatchNames = do
    blob <- loadLumpByName "PNAMES"
    yeahright (parsePNAMES blob)

parsePNAMES :: ByteString -> Either String (Vector Name8)
parsePNAMES blob = do
    (n, body) <- takeInt blob `orFail` "PNAMES header"
    guardMsg (BS.length body == 8 * n) "PNAMES lump size"
    let f = Right . VP.fromListN n . map (Name8 . loadWord64BE 0) . chunkByteString 8
    f body

-- load palettes from PLAYPAL, there should be 14
loadPalettes :: Loader [Palette]
loadPalettes = do
    blob <- loadLumpByName "PLAYPAL"
    let size = 3 * 256
    failUnless (BS.length blob `mod` size == 0) "loadPalettes: PLAYPAL lump size"
    pure (unfoldr takePalette blob)

takePalette :: ByteString -> Maybe (Palette, ByteString)
takePalette bs
    | BS.null bs = Nothing
    | otherwise = let (l,r) = BS.splitAt (3 * 256) bs in Just (decodePalette l, r)

-- sounds
loadSoundLump :: Name8 -> Loader Wave
loadSoundLump name = do
    blob <- loadLumpByName name
    yeahright $ parseSound blob
    
parseSound :: ByteString -> Either String Wave
parseSound bs = do
    (header, body) <- takeBytes 8 bs `orFail` "parseSound: header size (a)"
    (rate, datasize) <- parseSoundHeader header
    guardMsg (BS.length body == datasize) "parseSound: bad blob size"
    let numsamples = datasize - 32
    let samples = (BS.take numsamples . BS.drop 16) body -- samples are padded on both sides
    pure $ Wave numsamples rate 8 1 samples

parseSoundHeader :: ByteString -> Either String (Int,Int)
parseSoundHeader blob = do
    (format, _lob) <- takeUShort blob `orFail` "parseSound: header size (b)"
    guardMsg (format == 3) "parseSound: bad header (format)"
    (rate, __ob) <- takeUShort _lob `orFail` "parseSound: header size (c)"
    (datasize, ___b) <- takeUInt __ob `orFail` "parseSound: header size (d)"
    guardMsg (BS.length ___b == 0) "parseSound: header size (e)"
    return (rate, datasize)


-- patches (single images)
loadPatch :: String -> Loader Patch
loadPatch name = do
    blob <- loadLumpByName (fromString name)
    case parsePatch blob of
        Nothing -> fail "bad patch"
        Just x -> pure x
    
parsePatch :: ByteString -> Maybe Patch
parsePatch blob = do
    guard (BS.length blob > 8)
    let width  = fromIntegral $ loadWord16LE 0 blob
    let height = fromIntegral $ loadWord16LE 2 blob
    let left   = fromIntegral $ loadInt16LE  4 blob
    let top    = fromIntegral $ loadInt16LE  6 blob
    let headersize = 8 + width * 4
    guard (BS.length blob > headersize)
    let columnoffs = map (\i -> fromIntegral $ loadWord32LE (8 + i*4) blob) [0..width-1]
    let header = PatchHeader width height left top (VP.fromListN width columnoffs)
    let columns = map (parseColumn columnoffs blob) [0 .. width - 1]
    pure $ Patch header columns

parseColumn :: [Int] -> ByteString -> Int -> PatchColumn
parseColumn offsets blob i =
    let off = offsets !! i in
    let posts = unfoldr tryTakePost (BS.drop off blob) in
    PatchColumn i posts

tryTakePost :: ByteString -> Maybe (Post, ByteString)
tryTakePost bs = do
    let total = BS.length bs
    guard (total >= 3)
    let b0 = loadWord8 0 bs
    guard (b0 < 255)
    let topdelta = fromIntegral b0
    let len = fromIntegral $ loadWord8 1 bs
    guard (total >= 3 + len + 1)
    let noheader = BS.drop 3 bs
    let rest = BS.drop (len + 1) noheader
    let pixels = SBS.toShort $ BS.take len noheader
    Just (Post topdelta pixels, rest)

-- load (wall) textures from TEXTURE1 and TEXTURE2. Texture number indexes into textures1 ++ textures2
-- ...


-- load a map
loadLevel :: String -> Loader Level
loadLevel name = do
    blob1 <- loadMapLump name "VERTEXES"
    blob2 <- loadMapLump name "LINEDEFS"
    blob3 <- loadMapLump name "SIDEDEFS"
    blob4 <- loadMapLump name "SECTORS"
    blob5 <- loadMapLump name "THINGS"
    let result = Level <$> parseVertexes blob1 <*> parseLinedefs blob2 <*> parseSidedefs blob3 <*> parseSectors blob4 <*> parseThings blob5
    result `orFailWith` ("loadLevel " ++ name)

divisibleBy :: Int -> ByteString -> Maybe ByteString
divisibleBy n bs
    | BS.length bs `mod` n == 0 = Just bs
    | otherwise = Nothing

parseVertexes :: ByteString -> Maybe [Vertex]
parseVertexes = mapByteStringChunks 4 $ \bs ->
    let x = fromIntegral (loadInt16LE 0 bs) in
    let y = fromIntegral (loadInt16LE 2 bs) in
    Vertex x y

parseLinedefs :: ByteString -> Maybe [LineDef]
parseLinedefs = mapByteStringChunks 14 $ \bs ->
    LineDef
        (fromIntegral (loadInt16LE 0 bs))
        (fromIntegral (loadInt16LE 2 bs))
        (fromIntegral (loadInt16LE 4 bs))
        (fromIntegral (loadInt16LE 6 bs))
        (fromIntegral (loadInt16LE 8 bs))
        (fromIntegral (loadInt16LE 10 bs))
        (fromIntegral (loadInt16LE 12 bs))

parseSidedefs :: ByteString -> Maybe [SideDef]
parseSidedefs = mapByteStringChunks 30 $ \bs ->
    SideDef
        (fromIntegral (loadInt16LE 0 bs))
        (fromIntegral (loadInt16LE 2 bs))
        (loadName8 4 bs)
        (loadName8 12 bs)
        (loadName8 20 bs)
        (fromIntegral (loadInt16LE 28 bs))

parseSectors :: ByteString -> Maybe [Sector]
parseSectors = mapByteStringChunks 26 $ \bs ->
    Sector
        (fromIntegral (loadInt16LE 0 bs))
        (fromIntegral (loadInt16LE 2 bs))
        (loadName8 4 bs)
        (loadName8 12 bs)
        (fromIntegral (loadInt16LE 20 bs))
        (fromIntegral (loadInt16LE 22 bs))
        (fromIntegral (loadInt16LE 24 bs))

parseThings :: ByteString -> Maybe [Thing]
parseThings  = mapByteStringChunks 10 $ \bs ->
    Thing
        (fromIntegral (loadInt16LE 0 bs))
        (fromIntegral (loadInt16LE 2 bs))
        (fromIntegral (loadInt16LE 4 bs))
        (fromIntegral (loadInt16LE 6 bs))
        (fromIntegral (loadInt16LE 8 bs))

loadMapLump :: String -> String -> Loader ByteString
loadMapLump mapname name = do
    Just map_i <- lookupLumpNumber (fromString mapname)
    Just lump_i <- findFirstLumpFrom map_i (fromString name)
    loadLump lump_i


-- load the NODES lump for level
loadNodes :: String -> Loader [Node]
loadNodes mapname = do
    blob <- loadMapLump mapname "NODES"
    nodes <- parseNodes blob `orFailWith` (mapname ++ "nodes lump")
    pure nodes
    --let n = BS.length blob `div` 28
    -- !bsp <- packBSP n nodes `orFailWith` (toString mapname ++ " cycle in nodes detected")
    --pure bsp

parseNodes :: ByteString -> Maybe [Node]
parseNodes = mapByteStringChunks 28 $ \bs ->
    Node
        (fromInt16 (loadInt16LE 0 bs))
        (fromInt16 (loadInt16LE 2 bs))
        (fromInt16 (loadInt16LE 4 bs))
        (fromInt16 (loadInt16LE 6 bs))
        (Four
            (fromInt16 (loadInt16LE 8 bs))
            (fromInt16 (loadInt16LE 10 bs))
            (fromInt16 (loadInt16LE 12 bs))
            (fromInt16 (loadInt16LE 14 bs)))
        (Four
            (fromInt16 (loadInt16LE 16 bs))
            (fromInt16 (loadInt16LE 18 bs))
            (fromInt16 (loadInt16LE 20 bs))
            (fromInt16 (loadInt16LE 22 bs)))
        (fromIntegral (loadWord16LE 24 bs))
        (fromIntegral (loadWord16LE 26 bs))



orFail (Just x) _  = Right x
orFail Nothing msg = Left msg

orFailWith :: MonadFail m => Maybe a -> String -> m a
orFailWith (Just x) _  = pure x
orFailWith Nothing msg = fail msg

guardMsg :: Bool -> String -> Either String ()
guardMsg True _ = Right ()
guardMsg False msg = Left msg

