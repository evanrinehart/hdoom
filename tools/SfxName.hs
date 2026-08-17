module SfxName where

import Control.Monad.Writer
import Data.Maybe
import Data.List
import Data.Char
import Control.Monad (zipWithM_)
import Utils

gendefs :: [String] -> Writer String ()
gendefs names = do
    telln "{-# LANGUAGE PatternSynonyms #-}"
    telln "module SfxName where"
    telln ""
    telln "newtype SfxName = SfxName Int deriving (Eq,Ord)"
    telln ""
    telln "instance Show SfxName where"
    mapM_ (\name -> telln $ "    showsPrec _ " ++ name ++ " = showString \"" ++ name ++ "\"") names
    telln "    showsPrec d (SfxName i) = showString \"SfxName \" . showsPrec d i"
    telln ""
    zipWithM_ genpat [0..] names
    telln ""
    telln "parseSfxName :: String -> Maybe (SfxName, String)"
    telln "parseSfxName input = case lex input of"
    mapM_ (\name -> telln $ "    [(\"" ++ name ++ "\", rest)] -> Just (" ++ name ++ ", rest)") names
    telln "    _ -> Nothing"
    telln ""
    telln "instance Read SfxName where"
    telln "    readsPrec _ = maybe [] (:[]) . parseSfxName"
    telln ""
    telln "instance Bounded SfxName where"
    telln $ "    minBound = SfxName 0"
    telln $ "    maxBound = SfxName " ++ show (length names - 1)
    telln ""
    telln "instance Enum SfxName where"
    telln $ "    fromEnum (SfxName i) = i"
    telln $ "    toEnum i ="
    telln $ "        let limit = fromEnum (maxBound :: SfxName) in"
    telln $ "        if 0 <= i && i <= limit"
    telln $ "            then SfxName i"
    telln $ "            else error $ \"toEnum{SfxName}: tag (\" ++ show i ++ \") is out of range [0,\" ++ show limit ++ \"]\""

genpat :: Int -> String -> Writer String ()
genpat i name = do
    telln ("pattern " ++ name ++ " :: SfxName")
    telln ("pattern " ++ name ++ " = SfxName " ++ show i)
    telln ""

makeSfxNames :: FilePath -> FilePath -> IO ()
makeSfxNames inPath outPath = do
    putStrLn "makeSfxNames..."
    putStrLn $ "\tinput: [" ++ inPath ++ "]"
    putStrLn $ "\toutput: [" ++ outPath ++ "]"
    body <- readFile inPath
    let f xs = listToMaybe [(l,r)| (l@(_:_),r) <- lex xs]
    let tokens = filter ("sfx_" `isPrefixOf`) (unfoldr f body)
    let uppertokens = map (map toUpper) tokens
    let (_,output) = runWriter (gendefs uppertokens)
    writeFile outPath output
