{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
module MobjFlags where

import Data.Bits
import Data.Word
import Text.ParserCombinators.ReadP (ReadP, skipSpaces, readS_to_P, string, char, chainl1, (+++))
import Text.Read (ReadPrec, Read(..), prec, lift)

newtype MobjFlags = MobjFlags Word32 deriving (Eq,Bits)

instance Show MobjFlags where
    showsPrec d (MobjFlags w) = showParen (d > 5) (showString (showFlags bits_table w))

instance Read MobjFlags where
   readPrec = prec 5 (lift flagsP)

flagsP :: ReadP MobjFlags
flagsP = chainl1 atomP opP where
    atomP :: ReadP MobjFlags
    atomP =
        parenP
        +++ namedP "MF_SPECIAL" MF_SPECIAL
        +++ namedP "MF_SPECIAL" MF_SPECIAL
        +++ namedP "MF_SOLID" MF_SOLID
        +++ namedP "MF_SHOOTABLE" MF_SHOOTABLE
        +++ namedP "MF_NOSECTOR" MF_NOSECTOR
        +++ namedP "MF_NOBLOCKMAP" MF_NOBLOCKMAP
        +++ namedP "MF_AMBUSH" MF_AMBUSH
        +++ namedP "MF_JUSTHIT" MF_JUSTHIT
        +++ namedP "MF_JUSTATTACKED" MF_JUSTATTACKED
        +++ namedP "MF_SPAWNCEILING" MF_SPAWNCEILING
        +++ namedP "MF_NOGRAVITY" MF_NOGRAVITY
        +++ namedP "MF_DROPOFF" MF_DROPOFF
        +++ namedP "MF_PICKUP" MF_PICKUP
        +++ namedP "MF_NOCLIP" MF_NOCLIP
        +++ namedP "MF_SLIDE" MF_SLIDE
        +++ namedP "MF_FLOAT" MF_FLOAT
        +++ namedP "MF_TELEPORT" MF_TELEPORT
        +++ namedP "MF_MISSILE" MF_MISSILE
        +++ namedP "MF_DROPPED" MF_DROPPED
        +++ namedP "MF_SHADOW" MF_SHADOW
        +++ namedP "MF_NOBLOOD" MF_NOBLOOD
        +++ namedP "MF_CORPSE" MF_CORPSE
        +++ namedP "MF_INFLOAT" MF_INFLOAT
        +++ namedP "MF_COUNTKILL" MF_COUNTKILL
        +++ namedP "MF_COUNTITEM" MF_COUNTITEM
        +++ namedP "MF_SKULLFLY" MF_SKULLFLY
        +++ namedP "MF_NOTDMATCH" MF_NOTDMATCH
        +++ numberP

    parenP :: ReadP MobjFlags
    parenP = skipSpaces *> char '(' *> flagsP <* skipSpaces <* char ')'

    namedP :: String -> MobjFlags -> ReadP MobjFlags
    namedP name value = skipSpaces *> string name <* skipSpaces *> pure value

    numberP :: ReadP MobjFlags
    numberP = do
        skipSpaces
        n <- readS_to_P reads
        skipSpaces
        pure (MobjFlags n)

    opP :: ReadP (MobjFlags -> MobjFlags -> MobjFlags)
    opP = skipSpaces *> string ".|." <* skipSpaces *> pure (.|.)

joins :: String -> String -> [String] -> String
joins z _ [] = z
joins _ _ [x] = x
joins z sep (x:xs) = x ++ sep ++ joins z sep xs

showFlags :: [(Word32, String)] -> Word32 -> String
showFlags table x =
    joins "0" " .|. " $
    map (\i -> case lookup i table of Just name -> name; Nothing -> show i) $
    filter (not . (== 0)) $
    map (\i -> x .&. (1 `shiftL` i)) $
    [0..31]

pattern MF_SPECIAL :: MobjFlags
pattern MF_SPECIAL = MobjFlags 1

pattern MF_SOLID :: MobjFlags
pattern MF_SOLID = MobjFlags 2

pattern MF_SHOOTABLE :: MobjFlags
pattern MF_SHOOTABLE = MobjFlags 4

pattern MF_NOSECTOR :: MobjFlags
pattern MF_NOSECTOR = MobjFlags 8

pattern MF_NOBLOCKMAP :: MobjFlags
pattern MF_NOBLOCKMAP = MobjFlags 16

pattern MF_AMBUSH :: MobjFlags
pattern MF_AMBUSH = MobjFlags 32

pattern MF_JUSTHIT :: MobjFlags
pattern MF_JUSTHIT = MobjFlags 64

pattern MF_JUSTATTACKED :: MobjFlags
pattern MF_JUSTATTACKED = MobjFlags 128

pattern MF_SPAWNCEILING :: MobjFlags
pattern MF_SPAWNCEILING = MobjFlags 256

pattern MF_NOGRAVITY :: MobjFlags
pattern MF_NOGRAVITY = MobjFlags 512

pattern MF_DROPOFF :: MobjFlags
pattern MF_DROPOFF = MobjFlags 1024

pattern MF_PICKUP :: MobjFlags
pattern MF_PICKUP = MobjFlags 2048

pattern MF_NOCLIP :: MobjFlags
pattern MF_NOCLIP = MobjFlags 4096

pattern MF_SLIDE :: MobjFlags
pattern MF_SLIDE = MobjFlags 8192

pattern MF_FLOAT :: MobjFlags
pattern MF_FLOAT = MobjFlags 16384

pattern MF_TELEPORT :: MobjFlags
pattern MF_TELEPORT = MobjFlags 32768

pattern MF_MISSILE :: MobjFlags
pattern MF_MISSILE = MobjFlags 65536

pattern MF_DROPPED :: MobjFlags
pattern MF_DROPPED = MobjFlags 131072

pattern MF_SHADOW :: MobjFlags
pattern MF_SHADOW = MobjFlags 262144

pattern MF_NOBLOOD :: MobjFlags
pattern MF_NOBLOOD = MobjFlags 524288

pattern MF_CORPSE :: MobjFlags
pattern MF_CORPSE = MobjFlags 1048576

pattern MF_INFLOAT :: MobjFlags
pattern MF_INFLOAT = MobjFlags 2097152

pattern MF_COUNTKILL :: MobjFlags
pattern MF_COUNTKILL = MobjFlags 4194304

pattern MF_COUNTITEM :: MobjFlags
pattern MF_COUNTITEM = MobjFlags 8388608

pattern MF_SKULLFLY :: MobjFlags
pattern MF_SKULLFLY = MobjFlags 16777216

pattern MF_NOTDMATCH :: MobjFlags
pattern MF_NOTDMATCH = MobjFlags 33554432


bits_table :: [(Word32, String)]
bits_table =
    [(1, "MF_SPECIAL")
    ,(2, "MF_SOLID")
    ,(4, "MF_SHOOTABLE")
    ,(8, "MF_NOSECTOR")
    ,(16, "MF_NOBLOCKMAP")
    ,(32, "MF_AMBUSH")
    ,(64, "MF_JUSTHIT")
    ,(128, "MF_JUSTATTACKED")
    ,(256, "MF_SPAWNCEILING")
    ,(512, "MF_NOGRAVITY")
    ,(1024, "MF_DROPOFF")
    ,(2048, "MF_PICKUP")
    ,(4096, "MF_NOCLIP")
    ,(8192, "MF_SLIDE")
    ,(16384, "MF_FLOAT")
    ,(32768, "MF_TELEPORT")
    ,(65536, "MF_MISSILE")
    ,(131072, "MF_DROPPED")
    ,(262144, "MF_SHADOW")
    ,(524288, "MF_NOBLOOD")
    ,(1048576, "MF_CORPSE")
    ,(2097152, "MF_INFLOAT")
    ,(4194304, "MF_COUNTKILL")
    ,(8388608, "MF_COUNTITEM")
    ,(16777216, "MF_SKULLFLY")
    ,(33554432, "MF_NOTDMATCH")
    ]
