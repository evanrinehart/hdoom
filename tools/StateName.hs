module StateName where

import Control.Monad.Writer
import Data.Maybe
import Data.List
import Control.Monad (zipWithM_)
import Utils

gendefs :: [String] -> Writer String ()
gendefs names = do
    telln "{-# LANGUAGE PatternSynonyms #-}"
    telln "module StateName where"
    telln ""
    telln "newtype StateName = StateName Int deriving (Eq,Ord)"
    telln ""
    telln "instance Show StateName where"
    mapM_ (\name -> telln $ "    showsPrec _ " ++ name ++ " = showString \"" ++ name ++ "\"") names
    --zipWithM_ (\i name -> telln $ "    showsPrec _ (StateName " ++ show i ++ ") = showString \"" ++ name ++ "\"") [0..] names
    telln "    showsPrec d (StateName i) = showString \"StateName \" . showsPrec d i"
    telln ""
    zipWithM_ genpat [0..] names
    telln ""
    telln "parseStateName :: String -> Maybe (StateName, String)"
    telln "parseStateName input = case lex input of"
    mapM_ (\name -> telln $ "    [(\"" ++ name ++ "\", rest)] -> Just (" ++ name ++ ", rest)") names
    telln "    _ -> Nothing"
    telln ""
    telln "instance Read StateName where"
    telln "    readsPrec _ = maybe [] (:[]) . parseStateName"
    telln ""
    telln "instance Bounded StateName where"
    telln $ "    minBound = StateName 0"
    telln $ "    maxBound = StateName " ++ show (length names - 1)
    telln ""
    telln "instance Enum StateName where"
    telln $ "    fromEnum (StateName i) = i"
    telln $ "    toEnum i ="
    telln $ "        let limit = fromEnum (maxBound :: StateName) in"
    telln $ "        if 0 <= i && i <= limit"
    telln $ "            then StateName i"
    telln $ "            else error $ \"toEnum{StateName}: tag (\" ++ show i ++ \") is out of range [0,\" ++ show limit ++ \"]\""

genpat :: Int -> String -> Writer String ()
genpat i name = do
    telln ("pattern " ++ name ++ " :: StateName")
    telln ("pattern " ++ name ++ " = StateName " ++ show i)
    telln ""

makeStateNames :: FilePath -> FilePath -> IO ()
makeStateNames inPath outPath = do
    putStrLn "makeStateNames..."
    putStrLn $ "\tinput: [" ++ inPath ++ "]"
    putStrLn $ "\toutput: [" ++ outPath ++ "]"
    body <- readFile inPath
    let f xs = listToMaybe [(l,r)| (l@(_:_),r) <- lex xs]
    let tokens = filter ("S_" `isPrefixOf`) (unfoldr f body)
    let (_,output) = runWriter (gendefs tokens)
    --putStrLn output
    writeFile outPath output
