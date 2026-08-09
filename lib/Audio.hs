{-# LANGUAGE OverloadedStrings #-}
module Audio where

import System.IO (Handle)
import qualified Data.HashMap.Strict as HM
import Data.HashMap.Strict (HashMap)
import Data.Maybe
import qualified Data.ByteString as BS
import Data.Traversable (for)
import Control.Exception (evaluate)

import Name8
import Wave
import LumpDirectory
import Loader
import WadFile
import Raylib

data AudioResources = AudioResources
    { sfx_library :: HashMap Name8 Sound }

data AudioCtrl = AudioCtrl
    { play_sound :: Name8 -> IO ()
    , shutdown :: IO () }

initAudio :: LumpDirectory -> Handle -> IO AudioCtrl
initAudio ld h = do
    initAudioDevice
    library <- HM.fromList <$> loadSounds ld h ["DSPISTOL", "DSDOROPN", "DSITEMUP"]
    evaluate library
    pure $ wrapAudio (AudioResources library)

unloadResources :: AudioResources -> IO ()
unloadResources rs = mapM_ unloadSound (sfx_library rs)

wrapAudio :: AudioResources -> AudioCtrl
wrapAudio rs = AudioCtrl
    { play_sound = play rs
    , shutdown = unloadResources rs >> closeAudioDevice }

loadSounds :: LumpDirectory -> Handle -> [Name8] -> IO [(Name8, Sound)]
loadSounds ld h names = fmap catMaybes . for names $ \name -> do
    result <- runLoader (loadSoundLump name) ld h
    case result of
        Left msg -> do
            putStrLn (show name ++ ": " ++ msg)
            pure Nothing
        Right wave -> do
            sound <- loadSoundFromWave wave
            pure (Just (name, sound))

play :: AudioResources -> Name8 -> IO ()
play rs name = case HM.lookup name (sfx_library rs) of
    Just sound -> playSound sound
    Nothing -> do
        putStrLn ("play: sound [" ++ show name ++ "] not found")
        pure ()
