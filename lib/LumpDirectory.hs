{-# LANGUAGE OverloadedStrings #-}
module LumpDirectory where

import System.IO (Handle, SeekMode(..))
import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import qualified Data.Vector.Primitive as VP
import Data.Vector.Primitive ((!))
import Data.Int
import Name8
import Offset
import ByteParsing
import Control.Monad (guard)
import Control.Exception (evaluate)

-- the key to it all
data LumpDirectory = LumpDirectory
  { lumpdir_length :: Int,
    lumpdir_offsets :: VP.Vector Offset,
    lumpdir_sizes :: VP.Vector Int32,
    lumpdir_names :: VP.Vector Name8 }
        deriving Show

lumpdirGetName :: LumpDirectory -> Int -> Maybe Name8
lumpdirGetName (LumpDirectory n _ _ names) i
    | i < 0 = Nothing
    | i >= n = Nothing
    | otherwise = Just $ names ! i

-- before Loader can be used you need LumpDirectory
readLumpDirectory :: Handle -> IO (Either String LumpDirectory)
readLumpDirectory h = do
    hSeekOff h offsetZero
    mhdr <- readSizedBlob 16 h
    case mhdr of
        Nothing -> pure (Left "readLumpDirectory: main header size")
        Just hdr -> case parseMainHeader hdr of
            Nothing -> pure (Left "readLumpDirectory: main header format")
            Just (_, n, off) -> do
                hSeekOff h off
                mblob <- readSizedBlob (n * 16) h 
                case mblob of
                    Nothing -> pure (Left "readLumpDirectory: directory lump size")
                    Just blob -> do
                        col1 <- (evaluate . VP.fromListN n . map (Offset . loadInt32LE 0) . chunkByteString 16) blob
                        col2 <- (evaluate . VP.fromListN n . map (         loadInt32LE 4) . chunkByteString 16) blob
                        col3 <- (evaluate . VP.fromListN n . map (Name8 . loadWord64BE 8) . chunkByteString 16) blob
                        pure $ Right (LumpDirectory n col1 col2 col3)

readSizedBlob :: Int -> Handle -> IO (Maybe ByteString)
readSizedBlob size h = do
    blob <- BS.hGet h size -- blob = the whole directory
    if BS.length blob < size
        then return Nothing
        else return (Just blob)

parseMainHeader :: ByteString -> Maybe (ByteString, Int, Offset)
parseMainHeader blob = do
    guard (BS.length blob == 16)
    let sig = BS.take 4 blob
    guard (sig=="IWAD" || sig=="PWAD")
    let num = fromIntegral (loadInt32LE 4 blob)
    let off = Offset (loadInt32LE 8 blob)
    pure (sig, num, off)
