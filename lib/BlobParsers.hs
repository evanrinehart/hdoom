module BlobParsers where

import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import qualified Data.Vector.Primitive as VP
import Control.Monad (guard)
import Data.List (unfoldr)
import Data.Int
import Data.Word
import Data.Bits

import LoadWord
import Fix16
import Name8
import Four

import Level
import Nodes
import Palette
import Wave
import Patch

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
    let pixels = bsToByteArray $ BS.take len noheader
    Just (Post topdelta len pixels, rest)

parseSound :: ByteString -> Maybe Wave
parseSound bs = do
    (rate, samples) <- parseSoundHeader bs
    let n = BS.length samples
    pure $ Wave n rate 8 1 samples

parseSoundHeader :: ByteString -> Maybe (Int,ByteString)
parseSoundHeader blob = do
    guard (BS.length blob >= 24)
    let format = loadWord16LE 0 blob -- should be 3
    guard (format == 3)
    let rate = fromIntegral $ loadWord16LE 2 blob
    let datasize = fromIntegral $ loadWord32LE 4 blob -- numsamples + 32 (padding)
    let body = BS.drop 8 blob
    guard (BS.length body == datasize)
    let numsamples = datasize - 32
    let samples = (BS.take numsamples . BS.drop 16) body
    pure (rate, samples)

parsePalettes :: ByteString -> Maybe [Palette]
parsePalettes blob = do
    let size = 3 * 256
    mapByteStringChunks size decodePalette blob

parsePNAMES :: ByteString -> Maybe [Name8]
parsePNAMES blob = do
    guard (BS.length blob >= 4)
    let n = loadInt32LE 0 blob
    let body = BS.drop 4 blob
    mapByteStringChunks 8 (Name8 . loadWord64BE 0) body

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

loadName8 :: Int -> ByteString -> Name8
loadName8 i = Name8 . loadWord64BE i

mapByteStringChunks :: Int -> (ByteString -> a) -> ByteString -> Maybe [a]
mapByteStringChunks n f = go where
    go bs
        | BS.length bs `mod` n == 0 = Just (loop bs)
        | otherwise = Nothing
    loop bs
        | BS.null bs = []
        | otherwise = let (l,r) = BS.splitAt n bs in f l : loop r
