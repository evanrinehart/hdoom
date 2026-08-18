module MakeInfoTable where

import Control.Monad.Writer
import Data.Maybe
import Data.List
import Data.Char
import Text.Read

import Utils

data Value =
    VNone |
    VString String |
    VInt Int |
    VReal Int Int |
    VFlags [String]
        deriving Show

parseValue :: String -> Value
parseValue "" = VNone
parseValue str = case break (=='*') str of
    (l,_:"FRACUNIT") -> VReal (read l) 0
    _ -> case readMaybe str of
        Just i -> VInt i
        _ -> case splitOn '|' str of
            [x] -> VString x
            xs -> VFlags xs

splitOn :: Eq a => a -> [a] -> [[a]]
splitOn d [] = []
splitOn d body = case break (== d) body of
    (l, []) -> [l]
    (l, _:[]) -> [l,[]]
    (l, _:more) -> l : splitOn d more

skipLine :: String -> String
skipLine = drop 1 . dropWhile (/= '\n')

splitBraces :: String -> [String]
splitBraces content = case break (=='{') content of
    ("",_) -> []
    (_, "") -> []
    (_, '{':more) -> case break (== '}') more of
        (l,"") -> error "input entry missing closing brace"
        (l,'}':r) -> l : splitBraces r

splitElement :: String -> (String,String)
splitElement str = case break (== '/') str of
    ("", '/':'/':r) -> ("", strip r)
    (l, '/':'/':r) -> (takeWhile (not . (`elem` ",\t")) l, strip r)
    (l, "") -> (l, "")

parseElement :: String -> (String, Value)
parseElement = (\(a,b) -> (b, parseValue a)) . splitElement

isSomething :: (String, Value) -> Bool
isSomething ("", VNone) = False
isSomething _ = True

--parseEntries :: String -> [[String]]
--parseEntries = map (filter isSomething . map (parseElement . strip) . lines) . splitBraces . skipLine

splitAtSlash :: String -> (String, String)
splitAtSlash line = case break (== '/') line of
    (l,'/':'/':r) -> (takeWhile (not . (`elem` ", \t")) l, dropWhile (`elem` " \t") r)

parseSymbol :: String -> (String, String)
parseSymbol line =
    let (l,r) = splitAtSlash line in
    (r,l)

parseSfxName :: String -> (String, String)
parseSfxName line =
    let (l, tag) = splitAtSlash line in
    case l of
        "0" -> (tag, "SFX_NONE")
        name -> (tag, name)

parseStateName :: String -> (String, String)
parseStateName line =
    let (l, tag) = splitAtSlash line in
    case l of
        "0" -> (tag, "S_NULL")
        name -> (tag, name)

parseNone :: String -> String
parseNone line = let (l,r) = splitAtSlash line in r

data Number = NInt Int | NReal Int Int deriving Show

parseNumber :: String -> (String, Number)
parseNumber line =
    let (l,name) = splitAtSlash line in
    case break (== '*') l of
        (digits, "*FRACUNIT") -> (name, NReal (read digits) 0)
        (digits, "") -> (name, NInt (read digits))

parseFlags :: String -> (String, [String])
parseFlags line =
    let (l,name) = splitAtSlash line in
    case splitOn '|' l of
        ["0"] -> (name, [])
        xs -> (name, xs)

writeSymbol :: String -> Writer String ()
writeSymbol s = tell (map toUpper s) >> tell " "

writeLastSymbol :: String -> Writer String ()
writeLastSymbol s = tell (map toUpper s)

writeNumber :: Number -> Writer String ()
writeNumber (NInt i) = tell (showsPrec 10 i "") >> tell " "
writeNumber (NReal i 0) = tell (show i ++ ".0") >> tell " "

writeFlags :: [String] -> Writer String ()
writeFlags [] = tell "[]" >> tell " "
writeFlags (x:xs) = tell "[" >> tell x >> go xs >> tell "] " where
    go :: [String] -> Writer String ()
    go [] = pure ()
    go (y:ys) = tell "," >> tell y >> go ys

processEntry :: Char -> [String] -> Writer String ()
processEntry c (l:ls) = do
    tell "    "
    tell [c] -- comma or [
    tell "MobjInfo "
    writeSymbol (parseNone l)
    (writeNumber . snd . parseNumber . (ls !!)) 0  -- doomednum
    (writeSymbol . snd . parseSymbol . (ls !!)) 1  -- spawnstate
    (writeNumber . snd . parseNumber . (ls !!)) 2  -- spawnhealth
    (writeSymbol . snd . parseSymbol . (ls !!)) 3  -- seestate
    (writeSymbol . snd . parseSfxName . (ls !!)) 4  -- seesound
    (writeNumber . snd . parseNumber . (ls !!)) 5  -- reactiontime
    (writeSymbol . snd . parseSfxName . (ls !!)) 6  -- attacksound
    (writeSymbol . snd . parseSymbol . (ls !!)) 7  -- painstate
    (writeNumber . snd . parseNumber . (ls !!)) 8  -- painchance
    (writeSymbol . snd . parseSymbol . (ls !!)) 9  -- painsound
    (writeSymbol . snd . parseStateName . (ls !!)) 10  -- meleestate
    (writeSymbol . snd . parseStateName . (ls !!)) 11  -- missilestate
    (writeSymbol . snd . parseSymbol . (ls !!)) 12  -- deathstate
    (writeSymbol . snd . parseSymbol . (ls !!)) 13  -- xdeathstate
    (writeSymbol . snd . parseSymbol . (ls !!)) 14  -- deathsound
    (writeNumber . snd . parseNumber . (ls !!)) 15  -- speed
    (writeNumber . snd . parseNumber . (ls !!)) 16  -- radius
    (writeNumber . snd . parseNumber . (ls !!)) 17  -- height
    (writeNumber . snd . parseNumber . (ls !!)) 18  -- mass
    (writeNumber . snd . parseNumber . (ls !!)) 19  -- damage
    (writeSymbol . snd . parseSymbol . (ls !!)) 20  -- activesound
    (writeFlags . snd . parseFlags . (ls !!)) 21  -- flags
    (writeLastSymbol . snd . parseSymbol . (ls !!)) 22  -- raise state
    tell "\n"

genmodule :: [[String]] -> Writer String ()
genmodule (entry:entries) = do
    telln "module MobjInfo where"
    telln ""
    telln "import Number"
    telln "import MobjType"
    telln "import StateName"
    telln "import SfxName"
    telln "import MobjFlags"
    telln ""
    telln "data MobjInfo = MobjInfo"
    telln "   { mobjinfo_type :: MobjType"
    telln "   , mobjinfo_doomednum :: Number"
    telln "   , mobjinfo_spawnstate :: StateName"
    telln "   , mobjinfo_spawnhealth :: Number"
    telln "   , mobjinfo_seestate :: StateName"
    telln "   , mobjinfo_seesound :: SfxName"

    telln "   , mobjinfo_reactiontime :: Number"
    telln "   , mobjinfo_attacksound :: SfxName"
    telln "   , mobjinfo_painstate :: StateName"
    telln "   , mobjinfo_painchance :: Number"
    telln "   , mobjinfo_painsound :: SfxName"
    telln "   , mobjinfo_meleestate :: StateName"
    telln "   , mobjinfo_missilestate :: StateName"
    telln "   , mobjinfo_deathstate :: StateName"
    telln "   , mobjinfo_xdeathstate :: StateName"
    telln "   , mobjinfo_deathsound :: SfxName"
    telln "   , mobjinfo_speed :: Number"
    telln "   , mobjinfo_radius :: Number"
    telln "   , mobjinfo_height :: Number"
    telln "   , mobjinfo_mass :: Number"
    telln "   , mobjinfo_damage :: Number"
    telln "   , mobjinfo_activesound :: SfxName"
    telln "   , mobjinfo_flags :: [MobjFlags]"
    telln "   , mobjinfo_raisestate :: StateName }"
    telln "       deriving (Show, Read, Eq)"
    telln ""
    telln "mobjinfo_table :: [MobjInfo]"
    telln "mobjinfo_table ="
    processEntry '[' entry
    mapM_ (processEntry ',') entries
    telln "    ]"

makeInfoTable :: FilePath -> FilePath -> IO ()
makeInfoTable inPath outPath = do
    putStrLn "makeInfoTable..."
    putStrLn $ "\tinput: [" ++ inPath ++ "]"
    putStrLn $ "\toutput: [" ++ outPath ++ "]"
    body <- readFile inPath

    let rest = dropUntil "mobjinfo_t mobjinfo[" body
    let entries = (map (filter (not . null) . map strip . lines) . splitBraces . skipLine) rest
    let (_,output) = runWriter (genmodule entries)

    writeFile outPath output

testing :: IO ()
testing = do
    makeInfoTable "../linuxdoom-1.10/info.c" "lib/MobjInfo.hs"
