{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE OverloadedRecordDot #-}
module FileSystem (identifyIWAD, openFile, OsPath) where

import AbstractFilePath
import KnownIWADs

import System.IO (Handle, IOMode(..))
import System.Environment
import System.File.OsPath
import System.Directory.OsPath
import System.OsPath
import Data.Maybe (fromJust, maybeToList)
import Data.String
import Control.Exception (try, throwIO)
import Data.Bool
import Data.List

appName :: OsString
appName = "linuxdoom"

-- used if no iwad is specific
identifyIWAD :: IO (Maybe (KnownIWAD, OsPath))
identifyIWAD = tryIWADs known_iwads

tryIWADs :: [KnownIWAD] -> IO (Maybe (KnownIWAD, OsPath))
tryIWADs repertoire = do
    dirs <- getWadDirectories
    let candidates = [(iwad, dir </> iwad.iwad_filename) | dir <- dirs, iwad <- repertoire]
    findM (isFileReadable . snd) candidates

-- used if -iwad given
identifySpecificIWAD :: OsPath -> IO (Maybe (KnownIWAD, OsPath))
identifySpecificIWAD path = do
    let filename = takeFileName path
    case isKnownIWAD filename of
        Just wanted_iwad -> case filename == path of
            True -> tryIWADs [wanted_iwad]
            False -> findM (isFileReadable . snd) [(wanted_iwad, path)] -- very specific
        Nothing -> pure Nothing

isKnownIWAD :: OsString -> Maybe KnownIWAD
isKnownIWAD filename = find ((filename ==) . iwad_filename) known_iwads

getWadDirectories :: IO [OsPath]
getWadDirectories = do
    cwd <- getCurrentDirectory
    waddir <- fmap (fmap fromString) (lookupEnv "DOOMWADDIR")
    stash <- getXdgDirectory XdgData appName
    pure ([cwd] ++ maybeToList waddir ++ [stash </> "wads"])

isFileReadable :: OsPath -> IO Bool
isFileReadable path = do
    result <- try (getPermissions path) :: IO (Either IOError Permissions)
    case result of
        Left e -> pure False
        Right p -> pure (readable p)

findM :: Monad m => (a -> m Bool) -> [a] -> m (Maybe a)
findM check []     = pure Nothing
findM check (x:xs) = check x >>= f x xs where
    f _ xs False = findM check xs
    f x  _ True  = pure (Just x)

getSaveDirectory :: IO OsPath
getSaveDirectory = do
    base <- getXdgDirectory XdgData appName
    let path = base </> "saves"
    let parents = True
    createDirectoryIfMissing parents path
    return path


-- wip
buildSavePath :: OsPath -> Int -> OsPath
buildSavePath savedir i = savedir </> buildSaveName i

buildSaveName :: Int -> OsString
buildSaveName i = "doomsav" <> fromString (show i) <> ".dsg"
