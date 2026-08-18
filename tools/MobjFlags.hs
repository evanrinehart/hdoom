module MobjFlags where

import Control.Monad.Writer
import Data.Maybe
import Data.List
import Data.Char
import Text.Read

import Utils


getEnumLines :: String -> [String]
getEnumLines = filter ("MF_" `isPrefixOf`) . map strip . lines

parseInt :: String -> Int
parseInt s = read (takeWhile (/= ',') (strip s))

parseEnum :: String -> (String, Int)
parseEnum line = case break (== '=') line of
    (l,'=':r) -> (takeWhile (not . (`elem` " \t")) l, parseInt r)

genpattern :: String -> Int -> Writer String ()
genpattern name i = do
    telln $ "pattern " ++ name ++ " :: MobjFlags"
    telln $ "pattern " ++ name ++ " = MobjFlags " ++ show i
    telln ""

genmodule :: [(String,Int)] -> Writer String ()
genmodule bitsyms = do
    telln "{-# LANGUAGE PatternSynonyms #-}"
    telln "{-# LANGUAGE GeneralizedNewtypeDeriving #-}"
    telln "module MobjFlags where"
    telln ""
    telln "import Data.Bits"
    telln "import Data.Word"
    telln "import Text.ParserCombinators.ReadP (ReadP, skipSpaces, readS_to_P, string, char, chainl1, (+++))"
    telln "import Text.Read (ReadPrec, Read(..), prec, lift)"
    telln ""
    telln "newtype MobjFlags = MobjFlags Word32 deriving (Eq,Bits)"
    telln ""
    telln "instance Show MobjFlags where"
    telln "    showsPrec d (MobjFlags w) = showParen (d > 5) (showString (showFlags bits_table w))"
    telln ""
    telln "instance Read MobjFlags where"
    telln "   readPrec = prec 5 (lift flagsP)"
    telln ""
    telln "flagsP :: ReadP MobjFlags"
    telln "flagsP = chainl1 atomP opP where"
    telln "    atomP :: ReadP MobjFlags"
    telln "    atomP ="
    telln "        parenP"
    telln "        +++ namedP \"MF_SPECIAL\" MF_SPECIAL"
    mapM_ (\(name,_) -> telln $ "        +++ namedP \"" ++ name ++ "\" " ++ name) bitsyms
    telln "        +++ numberP"
    telln ""
    telln "    parenP :: ReadP MobjFlags"
    telln "    parenP = skipSpaces *> char '(' *> flagsP <* skipSpaces <* char ')'"
    telln ""
    telln "    namedP :: String -> MobjFlags -> ReadP MobjFlags"
    telln "    namedP name value = skipSpaces *> string name <* skipSpaces *> pure value"
    telln ""
    telln "    numberP :: ReadP MobjFlags"
    telln "    numberP = do"
    telln "        skipSpaces"
    telln "        n <- readS_to_P reads"
    telln "        skipSpaces"
    telln "        pure (MobjFlags n)"
    telln ""
    telln "    opP :: ReadP (MobjFlags -> MobjFlags -> MobjFlags)"
    telln "    opP = skipSpaces *> string \".|.\" <* skipSpaces *> pure (.|.)"
    telln ""
    telln "joins :: String -> String -> [String] -> String"
    telln "joins z _ [] = z"
    telln "joins _ _ [x] = x"
    telln "joins z sep (x:xs) = x ++ sep ++ joins z sep xs"
    telln ""
    telln "showFlags :: [(Word32, String)] -> Word32 -> String"
    telln "showFlags table x ="
    telln "    joins \"0\" \" .|. \" $"
    telln "    map (\\i -> case lookup i table of Just name -> name; Nothing -> show i) $"
    telln "    filter (not . (== 0)) $"
    telln "    map (\\i -> x .&. (1 `shiftL` i)) $"
    telln "    [0..31]"
    telln ""
    mapM_ (\(name,n) -> genpattern name n) bitsyms
    telln ""
    telln "bits_table :: [(Word32, String)]"
    telln "bits_table ="
    mapM_ (\(name,n) -> telln $ "    [(" ++ show n ++ ", " ++ show name ++ ")") (take 1 bitsyms)
    mapM_ (\(name,n) -> telln $ "    ,(" ++ show n ++ ", " ++ show name ++ ")") (drop 1 bitsyms)
    telln "    ]"

outlier :: (String, Int) -> Bool
outlier (name,_) = name == "MF_TRANSSHIFT" || name == "MF_TRANSLATION"

makeMobjFlags :: FilePath -> FilePath -> IO ()
makeMobjFlags inPath outPath = do
    putStrLn "makeMobjFlags..."
    putStrLn $ "\tinput: [" ++ inPath ++ "]"
    putStrLn $ "\toutput: [" ++ outPath ++ "]"
    body <- readFile inPath

    let enumlines = getEnumLines body
    let bitsyms = filter (not . outlier) (map parseEnum enumlines)
    let (_,output) = runWriter (genmodule bitsyms)

    writeFile outPath output
