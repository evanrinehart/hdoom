{-# LANGUAGE PatternSynonyms #-}
module MobjType where

newtype MobjType = MobjType Int deriving (Eq,Ord)

instance Show MobjType where
    showsPrec _ MT_PLAYER = showString "MT_PLAYER"
    showsPrec _ MT_POSSESSED = showString "MT_POSSESSED"
    showsPrec _ MT_SHOTGUY = showString "MT_SHOTGUY"
    showsPrec _ MT_VILE = showString "MT_VILE"
    showsPrec _ MT_FIRE = showString "MT_FIRE"
    showsPrec _ MT_UNDEAD = showString "MT_UNDEAD"
    showsPrec _ MT_TRACER = showString "MT_TRACER"
    showsPrec _ MT_SMOKE = showString "MT_SMOKE"
    showsPrec _ MT_FATSO = showString "MT_FATSO"
    showsPrec _ MT_FATSHOT = showString "MT_FATSHOT"
    showsPrec _ MT_CHAINGUY = showString "MT_CHAINGUY"
    showsPrec _ MT_TROOP = showString "MT_TROOP"
    showsPrec _ MT_SERGEANT = showString "MT_SERGEANT"
    showsPrec _ MT_SHADOWS = showString "MT_SHADOWS"
    showsPrec _ MT_HEAD = showString "MT_HEAD"
    showsPrec _ MT_BRUISER = showString "MT_BRUISER"
    showsPrec _ MT_BRUISERSHOT = showString "MT_BRUISERSHOT"
    showsPrec _ MT_KNIGHT = showString "MT_KNIGHT"
    showsPrec _ MT_SKULL = showString "MT_SKULL"
    showsPrec _ MT_SPIDER = showString "MT_SPIDER"
    showsPrec _ MT_BABY = showString "MT_BABY"
    showsPrec _ MT_CYBORG = showString "MT_CYBORG"
    showsPrec _ MT_PAIN = showString "MT_PAIN"
    showsPrec _ MT_WOLFSS = showString "MT_WOLFSS"
    showsPrec _ MT_KEEN = showString "MT_KEEN"
    showsPrec _ MT_BOSSBRAIN = showString "MT_BOSSBRAIN"
    showsPrec _ MT_BOSSSPIT = showString "MT_BOSSSPIT"
    showsPrec _ MT_BOSSTARGET = showString "MT_BOSSTARGET"
    showsPrec _ MT_SPAWNSHOT = showString "MT_SPAWNSHOT"
    showsPrec _ MT_SPAWNFIRE = showString "MT_SPAWNFIRE"
    showsPrec _ MT_BARREL = showString "MT_BARREL"
    showsPrec _ MT_TROOPSHOT = showString "MT_TROOPSHOT"
    showsPrec _ MT_HEADSHOT = showString "MT_HEADSHOT"
    showsPrec _ MT_ROCKET = showString "MT_ROCKET"
    showsPrec _ MT_PLASMA = showString "MT_PLASMA"
    showsPrec _ MT_BFG = showString "MT_BFG"
    showsPrec _ MT_ARACHPLAZ = showString "MT_ARACHPLAZ"
    showsPrec _ MT_PUFF = showString "MT_PUFF"
    showsPrec _ MT_BLOOD = showString "MT_BLOOD"
    showsPrec _ MT_TFOG = showString "MT_TFOG"
    showsPrec _ MT_IFOG = showString "MT_IFOG"
    showsPrec _ MT_TELEPORTMAN = showString "MT_TELEPORTMAN"
    showsPrec _ MT_EXTRABFG = showString "MT_EXTRABFG"
    showsPrec _ MT_MISC0 = showString "MT_MISC0"
    showsPrec _ MT_MISC1 = showString "MT_MISC1"
    showsPrec _ MT_MISC2 = showString "MT_MISC2"
    showsPrec _ MT_MISC3 = showString "MT_MISC3"
    showsPrec _ MT_MISC4 = showString "MT_MISC4"
    showsPrec _ MT_MISC5 = showString "MT_MISC5"
    showsPrec _ MT_MISC6 = showString "MT_MISC6"
    showsPrec _ MT_MISC7 = showString "MT_MISC7"
    showsPrec _ MT_MISC8 = showString "MT_MISC8"
    showsPrec _ MT_MISC9 = showString "MT_MISC9"
    showsPrec _ MT_MISC10 = showString "MT_MISC10"
    showsPrec _ MT_MISC11 = showString "MT_MISC11"
    showsPrec _ MT_MISC12 = showString "MT_MISC12"
    showsPrec _ MT_INV = showString "MT_INV"
    showsPrec _ MT_MISC13 = showString "MT_MISC13"
    showsPrec _ MT_INS = showString "MT_INS"
    showsPrec _ MT_MISC14 = showString "MT_MISC14"
    showsPrec _ MT_MISC15 = showString "MT_MISC15"
    showsPrec _ MT_MISC16 = showString "MT_MISC16"
    showsPrec _ MT_MEGA = showString "MT_MEGA"
    showsPrec _ MT_CLIP = showString "MT_CLIP"
    showsPrec _ MT_MISC17 = showString "MT_MISC17"
    showsPrec _ MT_MISC18 = showString "MT_MISC18"
    showsPrec _ MT_MISC19 = showString "MT_MISC19"
    showsPrec _ MT_MISC20 = showString "MT_MISC20"
    showsPrec _ MT_MISC21 = showString "MT_MISC21"
    showsPrec _ MT_MISC22 = showString "MT_MISC22"
    showsPrec _ MT_MISC23 = showString "MT_MISC23"
    showsPrec _ MT_MISC24 = showString "MT_MISC24"
    showsPrec _ MT_MISC25 = showString "MT_MISC25"
    showsPrec _ MT_CHAINGUN = showString "MT_CHAINGUN"
    showsPrec _ MT_MISC26 = showString "MT_MISC26"
    showsPrec _ MT_MISC27 = showString "MT_MISC27"
    showsPrec _ MT_MISC28 = showString "MT_MISC28"
    showsPrec _ MT_SHOTGUN = showString "MT_SHOTGUN"
    showsPrec _ MT_SUPERSHOTGUN = showString "MT_SUPERSHOTGUN"
    showsPrec _ MT_MISC29 = showString "MT_MISC29"
    showsPrec _ MT_MISC30 = showString "MT_MISC30"
    showsPrec _ MT_MISC31 = showString "MT_MISC31"
    showsPrec _ MT_MISC32 = showString "MT_MISC32"
    showsPrec _ MT_MISC33 = showString "MT_MISC33"
    showsPrec _ MT_MISC34 = showString "MT_MISC34"
    showsPrec _ MT_MISC35 = showString "MT_MISC35"
    showsPrec _ MT_MISC36 = showString "MT_MISC36"
    showsPrec _ MT_MISC37 = showString "MT_MISC37"
    showsPrec _ MT_MISC38 = showString "MT_MISC38"
    showsPrec _ MT_MISC39 = showString "MT_MISC39"
    showsPrec _ MT_MISC40 = showString "MT_MISC40"
    showsPrec _ MT_MISC41 = showString "MT_MISC41"
    showsPrec _ MT_MISC42 = showString "MT_MISC42"
    showsPrec _ MT_MISC43 = showString "MT_MISC43"
    showsPrec _ MT_MISC44 = showString "MT_MISC44"
    showsPrec _ MT_MISC45 = showString "MT_MISC45"
    showsPrec _ MT_MISC46 = showString "MT_MISC46"
    showsPrec _ MT_MISC47 = showString "MT_MISC47"
    showsPrec _ MT_MISC48 = showString "MT_MISC48"
    showsPrec _ MT_MISC49 = showString "MT_MISC49"
    showsPrec _ MT_MISC50 = showString "MT_MISC50"
    showsPrec _ MT_MISC51 = showString "MT_MISC51"
    showsPrec _ MT_MISC52 = showString "MT_MISC52"
    showsPrec _ MT_MISC53 = showString "MT_MISC53"
    showsPrec _ MT_MISC54 = showString "MT_MISC54"
    showsPrec _ MT_MISC55 = showString "MT_MISC55"
    showsPrec _ MT_MISC56 = showString "MT_MISC56"
    showsPrec _ MT_MISC57 = showString "MT_MISC57"
    showsPrec _ MT_MISC58 = showString "MT_MISC58"
    showsPrec _ MT_MISC59 = showString "MT_MISC59"
    showsPrec _ MT_MISC60 = showString "MT_MISC60"
    showsPrec _ MT_MISC61 = showString "MT_MISC61"
    showsPrec _ MT_MISC62 = showString "MT_MISC62"
    showsPrec _ MT_MISC63 = showString "MT_MISC63"
    showsPrec _ MT_MISC64 = showString "MT_MISC64"
    showsPrec _ MT_MISC65 = showString "MT_MISC65"
    showsPrec _ MT_MISC66 = showString "MT_MISC66"
    showsPrec _ MT_MISC67 = showString "MT_MISC67"
    showsPrec _ MT_MISC68 = showString "MT_MISC68"
    showsPrec _ MT_MISC69 = showString "MT_MISC69"
    showsPrec _ MT_MISC70 = showString "MT_MISC70"
    showsPrec _ MT_MISC71 = showString "MT_MISC71"
    showsPrec _ MT_MISC72 = showString "MT_MISC72"
    showsPrec _ MT_MISC73 = showString "MT_MISC73"
    showsPrec _ MT_MISC74 = showString "MT_MISC74"
    showsPrec _ MT_MISC75 = showString "MT_MISC75"
    showsPrec _ MT_MISC76 = showString "MT_MISC76"
    showsPrec _ MT_MISC77 = showString "MT_MISC77"
    showsPrec _ MT_MISC78 = showString "MT_MISC78"
    showsPrec _ MT_MISC79 = showString "MT_MISC79"
    showsPrec _ MT_MISC80 = showString "MT_MISC80"
    showsPrec _ MT_MISC81 = showString "MT_MISC81"
    showsPrec _ MT_MISC82 = showString "MT_MISC82"
    showsPrec _ MT_MISC83 = showString "MT_MISC83"
    showsPrec _ MT_MISC84 = showString "MT_MISC84"
    showsPrec _ MT_MISC85 = showString "MT_MISC85"
    showsPrec _ MT_MISC86 = showString "MT_MISC86"
    showsPrec d (MobjType i) = showString "MobjType " . showsPrec d i

pattern MT_PLAYER :: MobjType
pattern MT_PLAYER = MobjType 0

pattern MT_POSSESSED :: MobjType
pattern MT_POSSESSED = MobjType 1

pattern MT_SHOTGUY :: MobjType
pattern MT_SHOTGUY = MobjType 2

pattern MT_VILE :: MobjType
pattern MT_VILE = MobjType 3

pattern MT_FIRE :: MobjType
pattern MT_FIRE = MobjType 4

pattern MT_UNDEAD :: MobjType
pattern MT_UNDEAD = MobjType 5

pattern MT_TRACER :: MobjType
pattern MT_TRACER = MobjType 6

pattern MT_SMOKE :: MobjType
pattern MT_SMOKE = MobjType 7

pattern MT_FATSO :: MobjType
pattern MT_FATSO = MobjType 8

pattern MT_FATSHOT :: MobjType
pattern MT_FATSHOT = MobjType 9

pattern MT_CHAINGUY :: MobjType
pattern MT_CHAINGUY = MobjType 10

pattern MT_TROOP :: MobjType
pattern MT_TROOP = MobjType 11

pattern MT_SERGEANT :: MobjType
pattern MT_SERGEANT = MobjType 12

pattern MT_SHADOWS :: MobjType
pattern MT_SHADOWS = MobjType 13

pattern MT_HEAD :: MobjType
pattern MT_HEAD = MobjType 14

pattern MT_BRUISER :: MobjType
pattern MT_BRUISER = MobjType 15

pattern MT_BRUISERSHOT :: MobjType
pattern MT_BRUISERSHOT = MobjType 16

pattern MT_KNIGHT :: MobjType
pattern MT_KNIGHT = MobjType 17

pattern MT_SKULL :: MobjType
pattern MT_SKULL = MobjType 18

pattern MT_SPIDER :: MobjType
pattern MT_SPIDER = MobjType 19

pattern MT_BABY :: MobjType
pattern MT_BABY = MobjType 20

pattern MT_CYBORG :: MobjType
pattern MT_CYBORG = MobjType 21

pattern MT_PAIN :: MobjType
pattern MT_PAIN = MobjType 22

pattern MT_WOLFSS :: MobjType
pattern MT_WOLFSS = MobjType 23

pattern MT_KEEN :: MobjType
pattern MT_KEEN = MobjType 24

pattern MT_BOSSBRAIN :: MobjType
pattern MT_BOSSBRAIN = MobjType 25

pattern MT_BOSSSPIT :: MobjType
pattern MT_BOSSSPIT = MobjType 26

pattern MT_BOSSTARGET :: MobjType
pattern MT_BOSSTARGET = MobjType 27

pattern MT_SPAWNSHOT :: MobjType
pattern MT_SPAWNSHOT = MobjType 28

pattern MT_SPAWNFIRE :: MobjType
pattern MT_SPAWNFIRE = MobjType 29

pattern MT_BARREL :: MobjType
pattern MT_BARREL = MobjType 30

pattern MT_TROOPSHOT :: MobjType
pattern MT_TROOPSHOT = MobjType 31

pattern MT_HEADSHOT :: MobjType
pattern MT_HEADSHOT = MobjType 32

pattern MT_ROCKET :: MobjType
pattern MT_ROCKET = MobjType 33

pattern MT_PLASMA :: MobjType
pattern MT_PLASMA = MobjType 34

pattern MT_BFG :: MobjType
pattern MT_BFG = MobjType 35

pattern MT_ARACHPLAZ :: MobjType
pattern MT_ARACHPLAZ = MobjType 36

pattern MT_PUFF :: MobjType
pattern MT_PUFF = MobjType 37

pattern MT_BLOOD :: MobjType
pattern MT_BLOOD = MobjType 38

pattern MT_TFOG :: MobjType
pattern MT_TFOG = MobjType 39

pattern MT_IFOG :: MobjType
pattern MT_IFOG = MobjType 40

pattern MT_TELEPORTMAN :: MobjType
pattern MT_TELEPORTMAN = MobjType 41

pattern MT_EXTRABFG :: MobjType
pattern MT_EXTRABFG = MobjType 42

pattern MT_MISC0 :: MobjType
pattern MT_MISC0 = MobjType 43

pattern MT_MISC1 :: MobjType
pattern MT_MISC1 = MobjType 44

pattern MT_MISC2 :: MobjType
pattern MT_MISC2 = MobjType 45

pattern MT_MISC3 :: MobjType
pattern MT_MISC3 = MobjType 46

pattern MT_MISC4 :: MobjType
pattern MT_MISC4 = MobjType 47

pattern MT_MISC5 :: MobjType
pattern MT_MISC5 = MobjType 48

pattern MT_MISC6 :: MobjType
pattern MT_MISC6 = MobjType 49

pattern MT_MISC7 :: MobjType
pattern MT_MISC7 = MobjType 50

pattern MT_MISC8 :: MobjType
pattern MT_MISC8 = MobjType 51

pattern MT_MISC9 :: MobjType
pattern MT_MISC9 = MobjType 52

pattern MT_MISC10 :: MobjType
pattern MT_MISC10 = MobjType 53

pattern MT_MISC11 :: MobjType
pattern MT_MISC11 = MobjType 54

pattern MT_MISC12 :: MobjType
pattern MT_MISC12 = MobjType 55

pattern MT_INV :: MobjType
pattern MT_INV = MobjType 56

pattern MT_MISC13 :: MobjType
pattern MT_MISC13 = MobjType 57

pattern MT_INS :: MobjType
pattern MT_INS = MobjType 58

pattern MT_MISC14 :: MobjType
pattern MT_MISC14 = MobjType 59

pattern MT_MISC15 :: MobjType
pattern MT_MISC15 = MobjType 60

pattern MT_MISC16 :: MobjType
pattern MT_MISC16 = MobjType 61

pattern MT_MEGA :: MobjType
pattern MT_MEGA = MobjType 62

pattern MT_CLIP :: MobjType
pattern MT_CLIP = MobjType 63

pattern MT_MISC17 :: MobjType
pattern MT_MISC17 = MobjType 64

pattern MT_MISC18 :: MobjType
pattern MT_MISC18 = MobjType 65

pattern MT_MISC19 :: MobjType
pattern MT_MISC19 = MobjType 66

pattern MT_MISC20 :: MobjType
pattern MT_MISC20 = MobjType 67

pattern MT_MISC21 :: MobjType
pattern MT_MISC21 = MobjType 68

pattern MT_MISC22 :: MobjType
pattern MT_MISC22 = MobjType 69

pattern MT_MISC23 :: MobjType
pattern MT_MISC23 = MobjType 70

pattern MT_MISC24 :: MobjType
pattern MT_MISC24 = MobjType 71

pattern MT_MISC25 :: MobjType
pattern MT_MISC25 = MobjType 72

pattern MT_CHAINGUN :: MobjType
pattern MT_CHAINGUN = MobjType 73

pattern MT_MISC26 :: MobjType
pattern MT_MISC26 = MobjType 74

pattern MT_MISC27 :: MobjType
pattern MT_MISC27 = MobjType 75

pattern MT_MISC28 :: MobjType
pattern MT_MISC28 = MobjType 76

pattern MT_SHOTGUN :: MobjType
pattern MT_SHOTGUN = MobjType 77

pattern MT_SUPERSHOTGUN :: MobjType
pattern MT_SUPERSHOTGUN = MobjType 78

pattern MT_MISC29 :: MobjType
pattern MT_MISC29 = MobjType 79

pattern MT_MISC30 :: MobjType
pattern MT_MISC30 = MobjType 80

pattern MT_MISC31 :: MobjType
pattern MT_MISC31 = MobjType 81

pattern MT_MISC32 :: MobjType
pattern MT_MISC32 = MobjType 82

pattern MT_MISC33 :: MobjType
pattern MT_MISC33 = MobjType 83

pattern MT_MISC34 :: MobjType
pattern MT_MISC34 = MobjType 84

pattern MT_MISC35 :: MobjType
pattern MT_MISC35 = MobjType 85

pattern MT_MISC36 :: MobjType
pattern MT_MISC36 = MobjType 86

pattern MT_MISC37 :: MobjType
pattern MT_MISC37 = MobjType 87

pattern MT_MISC38 :: MobjType
pattern MT_MISC38 = MobjType 88

pattern MT_MISC39 :: MobjType
pattern MT_MISC39 = MobjType 89

pattern MT_MISC40 :: MobjType
pattern MT_MISC40 = MobjType 90

pattern MT_MISC41 :: MobjType
pattern MT_MISC41 = MobjType 91

pattern MT_MISC42 :: MobjType
pattern MT_MISC42 = MobjType 92

pattern MT_MISC43 :: MobjType
pattern MT_MISC43 = MobjType 93

pattern MT_MISC44 :: MobjType
pattern MT_MISC44 = MobjType 94

pattern MT_MISC45 :: MobjType
pattern MT_MISC45 = MobjType 95

pattern MT_MISC46 :: MobjType
pattern MT_MISC46 = MobjType 96

pattern MT_MISC47 :: MobjType
pattern MT_MISC47 = MobjType 97

pattern MT_MISC48 :: MobjType
pattern MT_MISC48 = MobjType 98

pattern MT_MISC49 :: MobjType
pattern MT_MISC49 = MobjType 99

pattern MT_MISC50 :: MobjType
pattern MT_MISC50 = MobjType 100

pattern MT_MISC51 :: MobjType
pattern MT_MISC51 = MobjType 101

pattern MT_MISC52 :: MobjType
pattern MT_MISC52 = MobjType 102

pattern MT_MISC53 :: MobjType
pattern MT_MISC53 = MobjType 103

pattern MT_MISC54 :: MobjType
pattern MT_MISC54 = MobjType 104

pattern MT_MISC55 :: MobjType
pattern MT_MISC55 = MobjType 105

pattern MT_MISC56 :: MobjType
pattern MT_MISC56 = MobjType 106

pattern MT_MISC57 :: MobjType
pattern MT_MISC57 = MobjType 107

pattern MT_MISC58 :: MobjType
pattern MT_MISC58 = MobjType 108

pattern MT_MISC59 :: MobjType
pattern MT_MISC59 = MobjType 109

pattern MT_MISC60 :: MobjType
pattern MT_MISC60 = MobjType 110

pattern MT_MISC61 :: MobjType
pattern MT_MISC61 = MobjType 111

pattern MT_MISC62 :: MobjType
pattern MT_MISC62 = MobjType 112

pattern MT_MISC63 :: MobjType
pattern MT_MISC63 = MobjType 113

pattern MT_MISC64 :: MobjType
pattern MT_MISC64 = MobjType 114

pattern MT_MISC65 :: MobjType
pattern MT_MISC65 = MobjType 115

pattern MT_MISC66 :: MobjType
pattern MT_MISC66 = MobjType 116

pattern MT_MISC67 :: MobjType
pattern MT_MISC67 = MobjType 117

pattern MT_MISC68 :: MobjType
pattern MT_MISC68 = MobjType 118

pattern MT_MISC69 :: MobjType
pattern MT_MISC69 = MobjType 119

pattern MT_MISC70 :: MobjType
pattern MT_MISC70 = MobjType 120

pattern MT_MISC71 :: MobjType
pattern MT_MISC71 = MobjType 121

pattern MT_MISC72 :: MobjType
pattern MT_MISC72 = MobjType 122

pattern MT_MISC73 :: MobjType
pattern MT_MISC73 = MobjType 123

pattern MT_MISC74 :: MobjType
pattern MT_MISC74 = MobjType 124

pattern MT_MISC75 :: MobjType
pattern MT_MISC75 = MobjType 125

pattern MT_MISC76 :: MobjType
pattern MT_MISC76 = MobjType 126

pattern MT_MISC77 :: MobjType
pattern MT_MISC77 = MobjType 127

pattern MT_MISC78 :: MobjType
pattern MT_MISC78 = MobjType 128

pattern MT_MISC79 :: MobjType
pattern MT_MISC79 = MobjType 129

pattern MT_MISC80 :: MobjType
pattern MT_MISC80 = MobjType 130

pattern MT_MISC81 :: MobjType
pattern MT_MISC81 = MobjType 131

pattern MT_MISC82 :: MobjType
pattern MT_MISC82 = MobjType 132

pattern MT_MISC83 :: MobjType
pattern MT_MISC83 = MobjType 133

pattern MT_MISC84 :: MobjType
pattern MT_MISC84 = MobjType 134

pattern MT_MISC85 :: MobjType
pattern MT_MISC85 = MobjType 135

pattern MT_MISC86 :: MobjType
pattern MT_MISC86 = MobjType 136


parseMobjType :: String -> Maybe (MobjType, String)
parseMobjType input = case lex input of
    [("MT_PLAYER", rest)] -> Just (MT_PLAYER, rest)
    [("MT_POSSESSED", rest)] -> Just (MT_POSSESSED, rest)
    [("MT_SHOTGUY", rest)] -> Just (MT_SHOTGUY, rest)
    [("MT_VILE", rest)] -> Just (MT_VILE, rest)
    [("MT_FIRE", rest)] -> Just (MT_FIRE, rest)
    [("MT_UNDEAD", rest)] -> Just (MT_UNDEAD, rest)
    [("MT_TRACER", rest)] -> Just (MT_TRACER, rest)
    [("MT_SMOKE", rest)] -> Just (MT_SMOKE, rest)
    [("MT_FATSO", rest)] -> Just (MT_FATSO, rest)
    [("MT_FATSHOT", rest)] -> Just (MT_FATSHOT, rest)
    [("MT_CHAINGUY", rest)] -> Just (MT_CHAINGUY, rest)
    [("MT_TROOP", rest)] -> Just (MT_TROOP, rest)
    [("MT_SERGEANT", rest)] -> Just (MT_SERGEANT, rest)
    [("MT_SHADOWS", rest)] -> Just (MT_SHADOWS, rest)
    [("MT_HEAD", rest)] -> Just (MT_HEAD, rest)
    [("MT_BRUISER", rest)] -> Just (MT_BRUISER, rest)
    [("MT_BRUISERSHOT", rest)] -> Just (MT_BRUISERSHOT, rest)
    [("MT_KNIGHT", rest)] -> Just (MT_KNIGHT, rest)
    [("MT_SKULL", rest)] -> Just (MT_SKULL, rest)
    [("MT_SPIDER", rest)] -> Just (MT_SPIDER, rest)
    [("MT_BABY", rest)] -> Just (MT_BABY, rest)
    [("MT_CYBORG", rest)] -> Just (MT_CYBORG, rest)
    [("MT_PAIN", rest)] -> Just (MT_PAIN, rest)
    [("MT_WOLFSS", rest)] -> Just (MT_WOLFSS, rest)
    [("MT_KEEN", rest)] -> Just (MT_KEEN, rest)
    [("MT_BOSSBRAIN", rest)] -> Just (MT_BOSSBRAIN, rest)
    [("MT_BOSSSPIT", rest)] -> Just (MT_BOSSSPIT, rest)
    [("MT_BOSSTARGET", rest)] -> Just (MT_BOSSTARGET, rest)
    [("MT_SPAWNSHOT", rest)] -> Just (MT_SPAWNSHOT, rest)
    [("MT_SPAWNFIRE", rest)] -> Just (MT_SPAWNFIRE, rest)
    [("MT_BARREL", rest)] -> Just (MT_BARREL, rest)
    [("MT_TROOPSHOT", rest)] -> Just (MT_TROOPSHOT, rest)
    [("MT_HEADSHOT", rest)] -> Just (MT_HEADSHOT, rest)
    [("MT_ROCKET", rest)] -> Just (MT_ROCKET, rest)
    [("MT_PLASMA", rest)] -> Just (MT_PLASMA, rest)
    [("MT_BFG", rest)] -> Just (MT_BFG, rest)
    [("MT_ARACHPLAZ", rest)] -> Just (MT_ARACHPLAZ, rest)
    [("MT_PUFF", rest)] -> Just (MT_PUFF, rest)
    [("MT_BLOOD", rest)] -> Just (MT_BLOOD, rest)
    [("MT_TFOG", rest)] -> Just (MT_TFOG, rest)
    [("MT_IFOG", rest)] -> Just (MT_IFOG, rest)
    [("MT_TELEPORTMAN", rest)] -> Just (MT_TELEPORTMAN, rest)
    [("MT_EXTRABFG", rest)] -> Just (MT_EXTRABFG, rest)
    [("MT_MISC0", rest)] -> Just (MT_MISC0, rest)
    [("MT_MISC1", rest)] -> Just (MT_MISC1, rest)
    [("MT_MISC2", rest)] -> Just (MT_MISC2, rest)
    [("MT_MISC3", rest)] -> Just (MT_MISC3, rest)
    [("MT_MISC4", rest)] -> Just (MT_MISC4, rest)
    [("MT_MISC5", rest)] -> Just (MT_MISC5, rest)
    [("MT_MISC6", rest)] -> Just (MT_MISC6, rest)
    [("MT_MISC7", rest)] -> Just (MT_MISC7, rest)
    [("MT_MISC8", rest)] -> Just (MT_MISC8, rest)
    [("MT_MISC9", rest)] -> Just (MT_MISC9, rest)
    [("MT_MISC10", rest)] -> Just (MT_MISC10, rest)
    [("MT_MISC11", rest)] -> Just (MT_MISC11, rest)
    [("MT_MISC12", rest)] -> Just (MT_MISC12, rest)
    [("MT_INV", rest)] -> Just (MT_INV, rest)
    [("MT_MISC13", rest)] -> Just (MT_MISC13, rest)
    [("MT_INS", rest)] -> Just (MT_INS, rest)
    [("MT_MISC14", rest)] -> Just (MT_MISC14, rest)
    [("MT_MISC15", rest)] -> Just (MT_MISC15, rest)
    [("MT_MISC16", rest)] -> Just (MT_MISC16, rest)
    [("MT_MEGA", rest)] -> Just (MT_MEGA, rest)
    [("MT_CLIP", rest)] -> Just (MT_CLIP, rest)
    [("MT_MISC17", rest)] -> Just (MT_MISC17, rest)
    [("MT_MISC18", rest)] -> Just (MT_MISC18, rest)
    [("MT_MISC19", rest)] -> Just (MT_MISC19, rest)
    [("MT_MISC20", rest)] -> Just (MT_MISC20, rest)
    [("MT_MISC21", rest)] -> Just (MT_MISC21, rest)
    [("MT_MISC22", rest)] -> Just (MT_MISC22, rest)
    [("MT_MISC23", rest)] -> Just (MT_MISC23, rest)
    [("MT_MISC24", rest)] -> Just (MT_MISC24, rest)
    [("MT_MISC25", rest)] -> Just (MT_MISC25, rest)
    [("MT_CHAINGUN", rest)] -> Just (MT_CHAINGUN, rest)
    [("MT_MISC26", rest)] -> Just (MT_MISC26, rest)
    [("MT_MISC27", rest)] -> Just (MT_MISC27, rest)
    [("MT_MISC28", rest)] -> Just (MT_MISC28, rest)
    [("MT_SHOTGUN", rest)] -> Just (MT_SHOTGUN, rest)
    [("MT_SUPERSHOTGUN", rest)] -> Just (MT_SUPERSHOTGUN, rest)
    [("MT_MISC29", rest)] -> Just (MT_MISC29, rest)
    [("MT_MISC30", rest)] -> Just (MT_MISC30, rest)
    [("MT_MISC31", rest)] -> Just (MT_MISC31, rest)
    [("MT_MISC32", rest)] -> Just (MT_MISC32, rest)
    [("MT_MISC33", rest)] -> Just (MT_MISC33, rest)
    [("MT_MISC34", rest)] -> Just (MT_MISC34, rest)
    [("MT_MISC35", rest)] -> Just (MT_MISC35, rest)
    [("MT_MISC36", rest)] -> Just (MT_MISC36, rest)
    [("MT_MISC37", rest)] -> Just (MT_MISC37, rest)
    [("MT_MISC38", rest)] -> Just (MT_MISC38, rest)
    [("MT_MISC39", rest)] -> Just (MT_MISC39, rest)
    [("MT_MISC40", rest)] -> Just (MT_MISC40, rest)
    [("MT_MISC41", rest)] -> Just (MT_MISC41, rest)
    [("MT_MISC42", rest)] -> Just (MT_MISC42, rest)
    [("MT_MISC43", rest)] -> Just (MT_MISC43, rest)
    [("MT_MISC44", rest)] -> Just (MT_MISC44, rest)
    [("MT_MISC45", rest)] -> Just (MT_MISC45, rest)
    [("MT_MISC46", rest)] -> Just (MT_MISC46, rest)
    [("MT_MISC47", rest)] -> Just (MT_MISC47, rest)
    [("MT_MISC48", rest)] -> Just (MT_MISC48, rest)
    [("MT_MISC49", rest)] -> Just (MT_MISC49, rest)
    [("MT_MISC50", rest)] -> Just (MT_MISC50, rest)
    [("MT_MISC51", rest)] -> Just (MT_MISC51, rest)
    [("MT_MISC52", rest)] -> Just (MT_MISC52, rest)
    [("MT_MISC53", rest)] -> Just (MT_MISC53, rest)
    [("MT_MISC54", rest)] -> Just (MT_MISC54, rest)
    [("MT_MISC55", rest)] -> Just (MT_MISC55, rest)
    [("MT_MISC56", rest)] -> Just (MT_MISC56, rest)
    [("MT_MISC57", rest)] -> Just (MT_MISC57, rest)
    [("MT_MISC58", rest)] -> Just (MT_MISC58, rest)
    [("MT_MISC59", rest)] -> Just (MT_MISC59, rest)
    [("MT_MISC60", rest)] -> Just (MT_MISC60, rest)
    [("MT_MISC61", rest)] -> Just (MT_MISC61, rest)
    [("MT_MISC62", rest)] -> Just (MT_MISC62, rest)
    [("MT_MISC63", rest)] -> Just (MT_MISC63, rest)
    [("MT_MISC64", rest)] -> Just (MT_MISC64, rest)
    [("MT_MISC65", rest)] -> Just (MT_MISC65, rest)
    [("MT_MISC66", rest)] -> Just (MT_MISC66, rest)
    [("MT_MISC67", rest)] -> Just (MT_MISC67, rest)
    [("MT_MISC68", rest)] -> Just (MT_MISC68, rest)
    [("MT_MISC69", rest)] -> Just (MT_MISC69, rest)
    [("MT_MISC70", rest)] -> Just (MT_MISC70, rest)
    [("MT_MISC71", rest)] -> Just (MT_MISC71, rest)
    [("MT_MISC72", rest)] -> Just (MT_MISC72, rest)
    [("MT_MISC73", rest)] -> Just (MT_MISC73, rest)
    [("MT_MISC74", rest)] -> Just (MT_MISC74, rest)
    [("MT_MISC75", rest)] -> Just (MT_MISC75, rest)
    [("MT_MISC76", rest)] -> Just (MT_MISC76, rest)
    [("MT_MISC77", rest)] -> Just (MT_MISC77, rest)
    [("MT_MISC78", rest)] -> Just (MT_MISC78, rest)
    [("MT_MISC79", rest)] -> Just (MT_MISC79, rest)
    [("MT_MISC80", rest)] -> Just (MT_MISC80, rest)
    [("MT_MISC81", rest)] -> Just (MT_MISC81, rest)
    [("MT_MISC82", rest)] -> Just (MT_MISC82, rest)
    [("MT_MISC83", rest)] -> Just (MT_MISC83, rest)
    [("MT_MISC84", rest)] -> Just (MT_MISC84, rest)
    [("MT_MISC85", rest)] -> Just (MT_MISC85, rest)
    [("MT_MISC86", rest)] -> Just (MT_MISC86, rest)
    _ -> Nothing

instance Read MobjType where
    readsPrec _ = maybe [] (:[]) . parseMobjType

instance Bounded MobjType where
    minBound = MobjType 0
    maxBound = MobjType 136

instance Enum MobjType where
    fromEnum (MobjType i) = i
    toEnum i =
        let limit = fromEnum (maxBound :: MobjType) in
        if 0 <= i && i <= limit
            then MobjType i
            else error $ "toEnum{MobjType}: tag (" ++ show i ++ ") is out of range [0," ++ show limit ++ "]"
