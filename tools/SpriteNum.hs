module SpriteNum where

import Control.Monad.Writer
import Data.Maybe
import Data.List
import Data.Char
import Control.Monad (zipWithM_)
import Utils

genmodule :: [String] -> Writer String ()
genmodule names = do
    telln "{-# LANGUAGE PatternSynonyms #-}"
    telln "module SpriteNum where"
    telln ""
    telln "newtype SpriteNum = SpriteNum Int deriving (Eq,Ord)"
    telln ""
    telln "instance Show SpriteNum where"
    mapM_ (\name -> telln $ "    showsPrec _ " ++ name ++ " = showString \"" ++ name ++ "\"") names
    telln "    showsPrec d (SpriteNum i) = showString \"SpriteNum \" . showsPrec d i"
    telln ""
    zipWithM_ genpat [0..] names
    telln ""
    telln "parseSpriteNum :: String -> Maybe (SpriteNum, String)"
    telln "parseSpriteNum input = case lex input of"
    mapM_ (\name -> telln $ "    [(\"" ++ name ++ "\", rest)] -> Just (" ++ name ++ ", rest)") names
    telln "    _ -> Nothing"
    telln ""
    telln "instance Read SpriteNum where"
    telln "    readsPrec _ = maybe [] (:[]) . parseSpriteNum"
    telln ""
    telln "instance Bounded SpriteNum where"
    telln $ "    minBound = SpriteNum 0"
    telln $ "    maxBound = SpriteNum " ++ show (length names - 1)
    telln ""
    telln "instance Enum SpriteNum where"
    telln $ "    fromEnum (SpriteNum i) = i"
    telln $ "    toEnum i ="
    telln $ "        let limit = fromEnum (maxBound :: SpriteNum) in"
    telln $ "        if 0 <= i && i <= limit"
    telln $ "            then SpriteNum i"
    telln $ "            else error $ \"toEnum{SpriteNum}: tag (\" ++ show i ++ \") is out of range [0,\" ++ show limit ++ \"]\""

genpat :: Int -> String -> Writer String ()
genpat i name = do
    telln ("pattern " ++ name ++ " :: SpriteNum")
    telln ("pattern " ++ name ++ " = SpriteNum " ++ show i)
    telln ""

getFuncName :: String -> String
getFuncName = takeWhile (/= '(') . drop 5

makeSpriteNums :: FilePath -> FilePath -> IO ()
makeSpriteNums inPath outPath = do
    putStrLn "makeSpriteNums..."
    putStrLn $ "\tinput: [" ++ inPath ++ "]"
    putStrLn $ "\toutput: [" ++ outPath ++ "]"
    body <- readFile inPath
    let sprite_lines = filter ("SPR_" `isPrefixOf`) (map strip (lines body))
    let sprite_names = map (takeWhile (/= ',')) sprite_lines
    let (_,output) = runWriter (genmodule sprite_names)
    writeFile outPath output
