module AbstractFilePath (OsString, OsPath, (</>)) where

import System.OsPath
import Data.String
import Data.Maybe

import System.File.OsPath (openFile)

instance IsString OsString where
    fromString = fromJust . encodeUtf
