module BlockMap where

import Data.Int
import Data.Word
import Data.Bits
import Data.ByteString (ByteString)
import Data.ByteString.Unsafe (unsafeIndex)
import qualified Data.ByteString as BS

-- BLOCKMAP is data provided with a level to help collision detection

type BlockList = [Int] -- linedef indices

data BlockMapData = BlockMapData
    { origin_x :: Int
    , origin_y :: Int
    , num_columns :: Int
    , num_rows :: Int
    , blocklist_offsets :: [Int]
    , blocklists :: [BlockList] }
        deriving (Show)

parseBlockMap :: ByteString -> Maybe BlockMapData
parseBlockMap blob = do
    ox:oy:ncols:nrows:more <- map fromIntegral <$> shred blob
    let n = ncols * nrows
    let (offsets,body) = splitAt n more
    let blocklists = splitOn (-1) body
    pure $ BlockMapData ox oy ncols nrows offsets blocklists

splitOn :: Int -> [Int] -> [[Int]]
splitOn delim xs = case span (/= delim) xs of
    ([], []) -> []
    (l, []) -> [l]
    (l, _:r) -> l : splitOn delim r

shred :: ByteString -> Maybe [Int16]
shred blob = case BS.length blob `divMod` 2 of
    (n, 0) -> Just [loadInt16LE blob i | i <- [0, 2 .. n-2]]
    (_, _) -> Nothing

loadInt16LE :: ByteString -> Int -> Int16
loadInt16LE bs i = fromIntegral (loadWord16LE bs i)

loadWord16LE :: ByteString -> Int -> Word16
loadWord16LE bs i =
    let w0 = fromIntegral $ unsafeIndex bs i
        w1 = fromIntegral $ unsafeIndex bs (i + 1)
    in w1 `shiftL` 8 .|. w0
