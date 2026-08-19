module Main where

import System.Environment (getArgs)

import MobjType (makeMobjTypes)
import MobjFlags (makeMobjFlags)
import StateName (makeStateNames)
import SfxName (makeSfxNames)
import MakeInfoTable (makeInfoTable)
import MakeStateTable (makeStateTable)

import CodePointer (makeCodePointers)
import SpriteNum (makeSpriteNums)

getConfig :: IO (FilePath, FilePath)
getConfig = do
    args <- getArgs
    case break (== "--doomsrc") args of
        (_, "--doomsrc":path:_) -> pure (path, "codex")
        _ -> fail "usage: makeinfo --doomsrc <path>"

main = do
    (doomSourceDir, outputDir) <- getConfig
    putStrLn $ "doomSourceDir = [" ++ doomSourceDir ++ "]"
    putStrLn $ "outputDir = [" ++ outputDir ++ "]"
    makeCodePointers (doomSourceDir ++ "/info.c") (outputDir ++ "/CodePointer.hs")
    makeSpriteNums (doomSourceDir ++ "/info.h") (outputDir ++ "/SpriteNum.hs")
    makeMobjTypes (doomSourceDir ++ "/info.h") (outputDir ++ "/MobjType.hs")
    makeStateNames (doomSourceDir ++ "/info.h") (outputDir ++ "/StateName.hs")
    makeSfxNames (doomSourceDir ++ "/sounds.h") (outputDir ++ "/SfxName.hs")
    makeMobjFlags (doomSourceDir ++ "/p_mobj.h") (outputDir ++ "/MobjFlags.hs")
    makeInfoTable (doomSourceDir ++ "/info.c") (outputDir ++ "/MobjInfo.hs")
    makeStateTable (doomSourceDir ++ "/info.c") (outputDir ++ "/MobjStates.hs")
