module MobjType where

import Control.Monad.Writer
import Data.Maybe
import Data.List
import Control.Monad (zipWithM_)
import Utils

gendefs :: [String] -> Writer String ()
gendefs names = do
    telln "{-# LANGUAGE PatternSynonyms #-}"
    telln "module MobjType where"
    telln ""
    telln "newtype MobjType = MobjType Int deriving (Eq,Ord)"
    telln ""
    telln "instance Show MobjType where"
    mapM_ (\name -> telln $ "    showsPrec _ " ++ name ++ " = showString \"" ++ name ++ "\"") names
    telln "    showsPrec d (MobjType i) = showString \"MobjType \" . showsPrec d i"
    telln ""
    zipWithM_ genpat [0..] names
    telln ""
    telln "parseMobjType :: String -> Maybe (MobjType, String)"
    telln "parseMobjType input = case lex input of"
    mapM_ (\name -> telln $ "    [(\"" ++ name ++ "\", rest)] -> Just (" ++ name ++ ", rest)") names
    telln "    _ -> Nothing"
    telln ""
    telln "instance Read MobjType where"
    telln "    readsPrec _ = maybe [] (:[]) . parseMobjType"
    telln ""
    telln "instance Bounded MobjType where"
    telln $ "    minBound = MobjType 0"
    telln $ "    maxBound = MobjType " ++ show (length names - 1)
    telln ""
    telln "instance Enum MobjType where"
    telln $ "    fromEnum (MobjType i) = i"
    telln $ "    toEnum i ="
    telln $ "        let limit = fromEnum (maxBound :: MobjType) in"
    telln $ "        if 0 <= i && i <= limit"
    telln $ "            then MobjType i"
    telln $ "            else error $ \"toEnum{MobjType}: tag (\" ++ show i ++ \") is out of range [0,\" ++ show limit ++ \"]\""

genpat :: Int -> String -> Writer String ()
genpat i name = do
    telln ("pattern " ++ name ++ " :: MobjType")
    telln ("pattern " ++ name ++ " = MobjType " ++ show i)
    telln ""

makeMobjTypes :: FilePath -> FilePath -> IO ()
makeMobjTypes inPath outPath = do
    putStrLn "makeMobjTypes..."
    putStrLn $ "\tinput: [" ++ inPath ++ "]"
    putStrLn $ "\toutput: [" ++ outPath ++ "]"
    body <- readFile inPath
    let f xs = listToMaybe [(l,r)| (l@(_:_),r) <- lex xs]
    let tokens = filter ("MT" `isPrefixOf`) (unfoldr f body)
    let (_,output) = runWriter (gendefs tokens)
    writeFile outPath output
