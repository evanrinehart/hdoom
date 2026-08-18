module MakeStateTable where

import Control.Monad.Writer
import Data.Maybe
import Data.List
import Data.Char
import Text.Read
import Data.Bits

import Utils

splitOn :: Eq a => a -> [a] -> [[a]]
splitOn d [] = []
splitOn d body = case break (== d) body of
    (l, []) -> [l]
    (l, _:[]) -> [l,[]]
    (l, _:more) -> l : splitOn d more

skipLine :: String -> String
skipLine = drop 1 . dropWhile (/= '\n')

genmodule :: [String] -> Writer String ()
genmodule (entry:entries) = do
    telln "module MobjStates where"
    telln ""
    telln "import StateName"
    telln "import SfxName"
    telln "import SpriteNum"
    telln "import CodePointer"
    telln ""
    telln "data MobjState = MobjState"
    telln "    { mobjstate_name :: StateName"
    telln "    , mobjstate_sprite :: SpriteNum"
    telln "    , mobjstate_subsprite :: Int"
    telln "    , mobjstate_tics :: Int"
    telln "    , mobjstate_action :: CodePointer"
    telln "    , mobjstate_next :: StateName"
    telln "    , mobjstate_misc1 :: Int"
    telln "    , mobjstate_misc2 :: Int"
    telln "    , mobjstate_fullbright :: Bool }"
    telln "        deriving (Show,Read,Eq)"
    telln ""
    telln "mobjstate_table :: [MobjState]"
    telln "mobjstate_table ="
    processEntry '[' entry
    mapM_ (processEntry ',') entries
    telln "    ]"

isSymChar :: Char -> Bool
isSymChar '_' = True
isSymChar c = isAlphaNum c

isIntChar :: Char -> Bool
isIntChar '-' = True
isIntChar c = isDigit c

writeRow :: [String] -> Writer String ()
writeRow [] = pure ()
writeRow [x] = tell x
writeRow (x:xs) = tell x >> tell " " >> writeRow xs

processEntry :: Char -> String -> Writer String ()
processEntry c raw = do
    let (sprite, ',':more) = span isSymChar $ dropWhile (not . isLetter) raw
    let (frame_s, ',':more') = span isIntChar more
    let frame = read frame_s :: Int
    let fullbright = frame .&. 0x8000 /= 0
    let subsprite = frame .&. (complement 0x8000)
    let (ticks_s, ',':'{':more'') = span isIntChar more'
    let ticks = read ticks_s :: Int
    let (action_s, '}':',':more''') = break (== '}') more''
    let action = case action_s of "NULL" -> "A_NULL"; other -> other
    let (next, ',':more'''') = break (== ',') more'''
    let (misc1_s, ',':more5) = break (== ',') more''''
    let (misc2_s, '}':more6) = break (== '}') more5
    let misc1 = read misc1_s :: Int
    let misc2 = read misc2_s :: Int
    let name = takeWhile isSymChar $ dropWhile (not . isLetter) more6
    tell "    "
    tell [c]
    tell " "
    writeRow ["MobjState", name, sprite, show subsprite, showsPrec 10 ticks "", action, next, misc1_s, misc2_s, show fullbright]
    tell "\n"

makeStateTable :: FilePath -> FilePath -> IO ()
makeStateTable inPath outPath = do
    putStrLn "makeStateTable..."
    putStrLn $ "\tinput: [" ++ inPath ++ "]"
    putStrLn $ "\toutput: [" ++ outPath ++ "]"
    body <- readFile inPath

    let row_lines = takeWhile (/= "};") (lines (skipLine (dropUntil "state_t\tstates[" body)))
    let (_,output) = runWriter (genmodule row_lines)

    writeFile outPath output

testing :: IO ()
testing = do
    makeStateTable "../linuxdoom-1.10/info.c" "lib/MobjStates.hs"
