module CodePointer where

import Control.Monad.Writer
import Data.Maybe
import Data.List
import Data.Char
import Control.Monad (zipWithM_)
import Utils

genmodule :: [String] -> Writer String ()
genmodule names = do
    telln "{-# LANGUAGE PatternSynonyms #-}"
    telln "module CodePointer where"
    telln ""
    telln "newtype CodePointer = CodePointer Int deriving (Eq,Ord)"
    telln ""
    telln "instance Show CodePointer where"
    mapM_ (\name -> telln $ "    showsPrec _ " ++ name ++ " = showString \"" ++ name ++ "\"") names
    telln "    showsPrec d (CodePointer i) = showString \"CodePointer \" . showsPrec d i"
    telln ""
    zipWithM_ genpat [0..] names
    telln ""
    telln "parseCodePointer :: String -> Maybe (CodePointer, String)"
    telln "parseCodePointer input = case lex input of"
    mapM_ (\name -> telln $ "    [(\"" ++ name ++ "\", rest)] -> Just (" ++ name ++ ", rest)") names
    telln "    _ -> Nothing"
    telln ""
    telln "instance Read CodePointer where"
    telln "    readsPrec _ = maybe [] (:[]) . parseCodePointer"
    telln ""
    telln "instance Bounded CodePointer where"
    telln $ "    minBound = CodePointer 0"
    telln $ "    maxBound = CodePointer " ++ show (length names - 1)
    telln ""
    telln "instance Enum CodePointer where"
    telln $ "    fromEnum (CodePointer i) = i"
    telln $ "    toEnum i ="
    telln $ "        let limit = fromEnum (maxBound :: CodePointer) in"
    telln $ "        if 0 <= i && i <= limit"
    telln $ "            then CodePointer i"
    telln $ "            else error $ \"toEnum{CodePointer}: tag (\" ++ show i ++ \") is out of range [0,\" ++ show limit ++ \"]\""

genpat :: Int -> String -> Writer String ()
genpat i name = do
    telln ("pattern " ++ name ++ " :: CodePointer")
    telln ("pattern " ++ name ++ " = CodePointer " ++ show i)
    telln ""

getFuncName :: String -> String
getFuncName = takeWhile (/= '(') . drop 5

makeCodePointers :: FilePath -> FilePath -> IO ()
makeCodePointers inPath outPath = do
    putStrLn "makeCodePointers..."
    putStrLn $ "\tinput: [" ++ inPath ++ "]"
    putStrLn $ "\toutput: [" ++ outPath ++ "]"
    body <- readFile inPath
    let func_lines = filter ("void A_" `isPrefixOf`) (lines body)
    let func_names = map getFuncName func_lines
    let (_,output) = runWriter (genmodule ("A_NULL" : func_names))
    writeFile outPath output
