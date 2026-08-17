{-# LANGUAGE PatternSynonyms #-}
module SpriteNum where

newtype SpriteNum = SpriteNum Int deriving (Eq,Ord)

instance Show SpriteNum where
    showsPrec _ SPR_TROO = showString "SPR_TROO"
    showsPrec _ SPR_SHTG = showString "SPR_SHTG"
    showsPrec _ SPR_PUNG = showString "SPR_PUNG"
    showsPrec _ SPR_PISG = showString "SPR_PISG"
    showsPrec _ SPR_PISF = showString "SPR_PISF"
    showsPrec _ SPR_SHTF = showString "SPR_SHTF"
    showsPrec _ SPR_SHT2 = showString "SPR_SHT2"
    showsPrec _ SPR_CHGG = showString "SPR_CHGG"
    showsPrec _ SPR_CHGF = showString "SPR_CHGF"
    showsPrec _ SPR_MISG = showString "SPR_MISG"
    showsPrec _ SPR_MISF = showString "SPR_MISF"
    showsPrec _ SPR_SAWG = showString "SPR_SAWG"
    showsPrec _ SPR_PLSG = showString "SPR_PLSG"
    showsPrec _ SPR_PLSF = showString "SPR_PLSF"
    showsPrec _ SPR_BFGG = showString "SPR_BFGG"
    showsPrec _ SPR_BFGF = showString "SPR_BFGF"
    showsPrec _ SPR_BLUD = showString "SPR_BLUD"
    showsPrec _ SPR_PUFF = showString "SPR_PUFF"
    showsPrec _ SPR_BAL1 = showString "SPR_BAL1"
    showsPrec _ SPR_BAL2 = showString "SPR_BAL2"
    showsPrec _ SPR_PLSS = showString "SPR_PLSS"
    showsPrec _ SPR_PLSE = showString "SPR_PLSE"
    showsPrec _ SPR_MISL = showString "SPR_MISL"
    showsPrec _ SPR_BFS1 = showString "SPR_BFS1"
    showsPrec _ SPR_BFE1 = showString "SPR_BFE1"
    showsPrec _ SPR_BFE2 = showString "SPR_BFE2"
    showsPrec _ SPR_TFOG = showString "SPR_TFOG"
    showsPrec _ SPR_IFOG = showString "SPR_IFOG"
    showsPrec _ SPR_PLAY = showString "SPR_PLAY"
    showsPrec _ SPR_POSS = showString "SPR_POSS"
    showsPrec _ SPR_SPOS = showString "SPR_SPOS"
    showsPrec _ SPR_VILE = showString "SPR_VILE"
    showsPrec _ SPR_FIRE = showString "SPR_FIRE"
    showsPrec _ SPR_FATB = showString "SPR_FATB"
    showsPrec _ SPR_FBXP = showString "SPR_FBXP"
    showsPrec _ SPR_SKEL = showString "SPR_SKEL"
    showsPrec _ SPR_MANF = showString "SPR_MANF"
    showsPrec _ SPR_FATT = showString "SPR_FATT"
    showsPrec _ SPR_CPOS = showString "SPR_CPOS"
    showsPrec _ SPR_SARG = showString "SPR_SARG"
    showsPrec _ SPR_HEAD = showString "SPR_HEAD"
    showsPrec _ SPR_BAL7 = showString "SPR_BAL7"
    showsPrec _ SPR_BOSS = showString "SPR_BOSS"
    showsPrec _ SPR_BOS2 = showString "SPR_BOS2"
    showsPrec _ SPR_SKUL = showString "SPR_SKUL"
    showsPrec _ SPR_SPID = showString "SPR_SPID"
    showsPrec _ SPR_BSPI = showString "SPR_BSPI"
    showsPrec _ SPR_APLS = showString "SPR_APLS"
    showsPrec _ SPR_APBX = showString "SPR_APBX"
    showsPrec _ SPR_CYBR = showString "SPR_CYBR"
    showsPrec _ SPR_PAIN = showString "SPR_PAIN"
    showsPrec _ SPR_SSWV = showString "SPR_SSWV"
    showsPrec _ SPR_KEEN = showString "SPR_KEEN"
    showsPrec _ SPR_BBRN = showString "SPR_BBRN"
    showsPrec _ SPR_BOSF = showString "SPR_BOSF"
    showsPrec _ SPR_ARM1 = showString "SPR_ARM1"
    showsPrec _ SPR_ARM2 = showString "SPR_ARM2"
    showsPrec _ SPR_BAR1 = showString "SPR_BAR1"
    showsPrec _ SPR_BEXP = showString "SPR_BEXP"
    showsPrec _ SPR_FCAN = showString "SPR_FCAN"
    showsPrec _ SPR_BON1 = showString "SPR_BON1"
    showsPrec _ SPR_BON2 = showString "SPR_BON2"
    showsPrec _ SPR_BKEY = showString "SPR_BKEY"
    showsPrec _ SPR_RKEY = showString "SPR_RKEY"
    showsPrec _ SPR_YKEY = showString "SPR_YKEY"
    showsPrec _ SPR_BSKU = showString "SPR_BSKU"
    showsPrec _ SPR_RSKU = showString "SPR_RSKU"
    showsPrec _ SPR_YSKU = showString "SPR_YSKU"
    showsPrec _ SPR_STIM = showString "SPR_STIM"
    showsPrec _ SPR_MEDI = showString "SPR_MEDI"
    showsPrec _ SPR_SOUL = showString "SPR_SOUL"
    showsPrec _ SPR_PINV = showString "SPR_PINV"
    showsPrec _ SPR_PSTR = showString "SPR_PSTR"
    showsPrec _ SPR_PINS = showString "SPR_PINS"
    showsPrec _ SPR_MEGA = showString "SPR_MEGA"
    showsPrec _ SPR_SUIT = showString "SPR_SUIT"
    showsPrec _ SPR_PMAP = showString "SPR_PMAP"
    showsPrec _ SPR_PVIS = showString "SPR_PVIS"
    showsPrec _ SPR_CLIP = showString "SPR_CLIP"
    showsPrec _ SPR_AMMO = showString "SPR_AMMO"
    showsPrec _ SPR_ROCK = showString "SPR_ROCK"
    showsPrec _ SPR_BROK = showString "SPR_BROK"
    showsPrec _ SPR_CELL = showString "SPR_CELL"
    showsPrec _ SPR_CELP = showString "SPR_CELP"
    showsPrec _ SPR_SHEL = showString "SPR_SHEL"
    showsPrec _ SPR_SBOX = showString "SPR_SBOX"
    showsPrec _ SPR_BPAK = showString "SPR_BPAK"
    showsPrec _ SPR_BFUG = showString "SPR_BFUG"
    showsPrec _ SPR_MGUN = showString "SPR_MGUN"
    showsPrec _ SPR_CSAW = showString "SPR_CSAW"
    showsPrec _ SPR_LAUN = showString "SPR_LAUN"
    showsPrec _ SPR_PLAS = showString "SPR_PLAS"
    showsPrec _ SPR_SHOT = showString "SPR_SHOT"
    showsPrec _ SPR_SGN2 = showString "SPR_SGN2"
    showsPrec _ SPR_COLU = showString "SPR_COLU"
    showsPrec _ SPR_SMT2 = showString "SPR_SMT2"
    showsPrec _ SPR_GOR1 = showString "SPR_GOR1"
    showsPrec _ SPR_POL2 = showString "SPR_POL2"
    showsPrec _ SPR_POL5 = showString "SPR_POL5"
    showsPrec _ SPR_POL4 = showString "SPR_POL4"
    showsPrec _ SPR_POL3 = showString "SPR_POL3"
    showsPrec _ SPR_POL1 = showString "SPR_POL1"
    showsPrec _ SPR_POL6 = showString "SPR_POL6"
    showsPrec _ SPR_GOR2 = showString "SPR_GOR2"
    showsPrec _ SPR_GOR3 = showString "SPR_GOR3"
    showsPrec _ SPR_GOR4 = showString "SPR_GOR4"
    showsPrec _ SPR_GOR5 = showString "SPR_GOR5"
    showsPrec _ SPR_SMIT = showString "SPR_SMIT"
    showsPrec _ SPR_COL1 = showString "SPR_COL1"
    showsPrec _ SPR_COL2 = showString "SPR_COL2"
    showsPrec _ SPR_COL3 = showString "SPR_COL3"
    showsPrec _ SPR_COL4 = showString "SPR_COL4"
    showsPrec _ SPR_CAND = showString "SPR_CAND"
    showsPrec _ SPR_CBRA = showString "SPR_CBRA"
    showsPrec _ SPR_COL6 = showString "SPR_COL6"
    showsPrec _ SPR_TRE1 = showString "SPR_TRE1"
    showsPrec _ SPR_TRE2 = showString "SPR_TRE2"
    showsPrec _ SPR_ELEC = showString "SPR_ELEC"
    showsPrec _ SPR_CEYE = showString "SPR_CEYE"
    showsPrec _ SPR_FSKU = showString "SPR_FSKU"
    showsPrec _ SPR_COL5 = showString "SPR_COL5"
    showsPrec _ SPR_TBLU = showString "SPR_TBLU"
    showsPrec _ SPR_TGRN = showString "SPR_TGRN"
    showsPrec _ SPR_TRED = showString "SPR_TRED"
    showsPrec _ SPR_SMBT = showString "SPR_SMBT"
    showsPrec _ SPR_SMGT = showString "SPR_SMGT"
    showsPrec _ SPR_SMRT = showString "SPR_SMRT"
    showsPrec _ SPR_HDB1 = showString "SPR_HDB1"
    showsPrec _ SPR_HDB2 = showString "SPR_HDB2"
    showsPrec _ SPR_HDB3 = showString "SPR_HDB3"
    showsPrec _ SPR_HDB4 = showString "SPR_HDB4"
    showsPrec _ SPR_HDB5 = showString "SPR_HDB5"
    showsPrec _ SPR_HDB6 = showString "SPR_HDB6"
    showsPrec _ SPR_POB1 = showString "SPR_POB1"
    showsPrec _ SPR_POB2 = showString "SPR_POB2"
    showsPrec _ SPR_BRS1 = showString "SPR_BRS1"
    showsPrec _ SPR_TLMP = showString "SPR_TLMP"
    showsPrec _ SPR_TLP2 = showString "SPR_TLP2"
    showsPrec d (SpriteNum i) = showString "SpriteNum " . showsPrec d i

pattern SPR_TROO :: SpriteNum
pattern SPR_TROO = SpriteNum 0

pattern SPR_SHTG :: SpriteNum
pattern SPR_SHTG = SpriteNum 1

pattern SPR_PUNG :: SpriteNum
pattern SPR_PUNG = SpriteNum 2

pattern SPR_PISG :: SpriteNum
pattern SPR_PISG = SpriteNum 3

pattern SPR_PISF :: SpriteNum
pattern SPR_PISF = SpriteNum 4

pattern SPR_SHTF :: SpriteNum
pattern SPR_SHTF = SpriteNum 5

pattern SPR_SHT2 :: SpriteNum
pattern SPR_SHT2 = SpriteNum 6

pattern SPR_CHGG :: SpriteNum
pattern SPR_CHGG = SpriteNum 7

pattern SPR_CHGF :: SpriteNum
pattern SPR_CHGF = SpriteNum 8

pattern SPR_MISG :: SpriteNum
pattern SPR_MISG = SpriteNum 9

pattern SPR_MISF :: SpriteNum
pattern SPR_MISF = SpriteNum 10

pattern SPR_SAWG :: SpriteNum
pattern SPR_SAWG = SpriteNum 11

pattern SPR_PLSG :: SpriteNum
pattern SPR_PLSG = SpriteNum 12

pattern SPR_PLSF :: SpriteNum
pattern SPR_PLSF = SpriteNum 13

pattern SPR_BFGG :: SpriteNum
pattern SPR_BFGG = SpriteNum 14

pattern SPR_BFGF :: SpriteNum
pattern SPR_BFGF = SpriteNum 15

pattern SPR_BLUD :: SpriteNum
pattern SPR_BLUD = SpriteNum 16

pattern SPR_PUFF :: SpriteNum
pattern SPR_PUFF = SpriteNum 17

pattern SPR_BAL1 :: SpriteNum
pattern SPR_BAL1 = SpriteNum 18

pattern SPR_BAL2 :: SpriteNum
pattern SPR_BAL2 = SpriteNum 19

pattern SPR_PLSS :: SpriteNum
pattern SPR_PLSS = SpriteNum 20

pattern SPR_PLSE :: SpriteNum
pattern SPR_PLSE = SpriteNum 21

pattern SPR_MISL :: SpriteNum
pattern SPR_MISL = SpriteNum 22

pattern SPR_BFS1 :: SpriteNum
pattern SPR_BFS1 = SpriteNum 23

pattern SPR_BFE1 :: SpriteNum
pattern SPR_BFE1 = SpriteNum 24

pattern SPR_BFE2 :: SpriteNum
pattern SPR_BFE2 = SpriteNum 25

pattern SPR_TFOG :: SpriteNum
pattern SPR_TFOG = SpriteNum 26

pattern SPR_IFOG :: SpriteNum
pattern SPR_IFOG = SpriteNum 27

pattern SPR_PLAY :: SpriteNum
pattern SPR_PLAY = SpriteNum 28

pattern SPR_POSS :: SpriteNum
pattern SPR_POSS = SpriteNum 29

pattern SPR_SPOS :: SpriteNum
pattern SPR_SPOS = SpriteNum 30

pattern SPR_VILE :: SpriteNum
pattern SPR_VILE = SpriteNum 31

pattern SPR_FIRE :: SpriteNum
pattern SPR_FIRE = SpriteNum 32

pattern SPR_FATB :: SpriteNum
pattern SPR_FATB = SpriteNum 33

pattern SPR_FBXP :: SpriteNum
pattern SPR_FBXP = SpriteNum 34

pattern SPR_SKEL :: SpriteNum
pattern SPR_SKEL = SpriteNum 35

pattern SPR_MANF :: SpriteNum
pattern SPR_MANF = SpriteNum 36

pattern SPR_FATT :: SpriteNum
pattern SPR_FATT = SpriteNum 37

pattern SPR_CPOS :: SpriteNum
pattern SPR_CPOS = SpriteNum 38

pattern SPR_SARG :: SpriteNum
pattern SPR_SARG = SpriteNum 39

pattern SPR_HEAD :: SpriteNum
pattern SPR_HEAD = SpriteNum 40

pattern SPR_BAL7 :: SpriteNum
pattern SPR_BAL7 = SpriteNum 41

pattern SPR_BOSS :: SpriteNum
pattern SPR_BOSS = SpriteNum 42

pattern SPR_BOS2 :: SpriteNum
pattern SPR_BOS2 = SpriteNum 43

pattern SPR_SKUL :: SpriteNum
pattern SPR_SKUL = SpriteNum 44

pattern SPR_SPID :: SpriteNum
pattern SPR_SPID = SpriteNum 45

pattern SPR_BSPI :: SpriteNum
pattern SPR_BSPI = SpriteNum 46

pattern SPR_APLS :: SpriteNum
pattern SPR_APLS = SpriteNum 47

pattern SPR_APBX :: SpriteNum
pattern SPR_APBX = SpriteNum 48

pattern SPR_CYBR :: SpriteNum
pattern SPR_CYBR = SpriteNum 49

pattern SPR_PAIN :: SpriteNum
pattern SPR_PAIN = SpriteNum 50

pattern SPR_SSWV :: SpriteNum
pattern SPR_SSWV = SpriteNum 51

pattern SPR_KEEN :: SpriteNum
pattern SPR_KEEN = SpriteNum 52

pattern SPR_BBRN :: SpriteNum
pattern SPR_BBRN = SpriteNum 53

pattern SPR_BOSF :: SpriteNum
pattern SPR_BOSF = SpriteNum 54

pattern SPR_ARM1 :: SpriteNum
pattern SPR_ARM1 = SpriteNum 55

pattern SPR_ARM2 :: SpriteNum
pattern SPR_ARM2 = SpriteNum 56

pattern SPR_BAR1 :: SpriteNum
pattern SPR_BAR1 = SpriteNum 57

pattern SPR_BEXP :: SpriteNum
pattern SPR_BEXP = SpriteNum 58

pattern SPR_FCAN :: SpriteNum
pattern SPR_FCAN = SpriteNum 59

pattern SPR_BON1 :: SpriteNum
pattern SPR_BON1 = SpriteNum 60

pattern SPR_BON2 :: SpriteNum
pattern SPR_BON2 = SpriteNum 61

pattern SPR_BKEY :: SpriteNum
pattern SPR_BKEY = SpriteNum 62

pattern SPR_RKEY :: SpriteNum
pattern SPR_RKEY = SpriteNum 63

pattern SPR_YKEY :: SpriteNum
pattern SPR_YKEY = SpriteNum 64

pattern SPR_BSKU :: SpriteNum
pattern SPR_BSKU = SpriteNum 65

pattern SPR_RSKU :: SpriteNum
pattern SPR_RSKU = SpriteNum 66

pattern SPR_YSKU :: SpriteNum
pattern SPR_YSKU = SpriteNum 67

pattern SPR_STIM :: SpriteNum
pattern SPR_STIM = SpriteNum 68

pattern SPR_MEDI :: SpriteNum
pattern SPR_MEDI = SpriteNum 69

pattern SPR_SOUL :: SpriteNum
pattern SPR_SOUL = SpriteNum 70

pattern SPR_PINV :: SpriteNum
pattern SPR_PINV = SpriteNum 71

pattern SPR_PSTR :: SpriteNum
pattern SPR_PSTR = SpriteNum 72

pattern SPR_PINS :: SpriteNum
pattern SPR_PINS = SpriteNum 73

pattern SPR_MEGA :: SpriteNum
pattern SPR_MEGA = SpriteNum 74

pattern SPR_SUIT :: SpriteNum
pattern SPR_SUIT = SpriteNum 75

pattern SPR_PMAP :: SpriteNum
pattern SPR_PMAP = SpriteNum 76

pattern SPR_PVIS :: SpriteNum
pattern SPR_PVIS = SpriteNum 77

pattern SPR_CLIP :: SpriteNum
pattern SPR_CLIP = SpriteNum 78

pattern SPR_AMMO :: SpriteNum
pattern SPR_AMMO = SpriteNum 79

pattern SPR_ROCK :: SpriteNum
pattern SPR_ROCK = SpriteNum 80

pattern SPR_BROK :: SpriteNum
pattern SPR_BROK = SpriteNum 81

pattern SPR_CELL :: SpriteNum
pattern SPR_CELL = SpriteNum 82

pattern SPR_CELP :: SpriteNum
pattern SPR_CELP = SpriteNum 83

pattern SPR_SHEL :: SpriteNum
pattern SPR_SHEL = SpriteNum 84

pattern SPR_SBOX :: SpriteNum
pattern SPR_SBOX = SpriteNum 85

pattern SPR_BPAK :: SpriteNum
pattern SPR_BPAK = SpriteNum 86

pattern SPR_BFUG :: SpriteNum
pattern SPR_BFUG = SpriteNum 87

pattern SPR_MGUN :: SpriteNum
pattern SPR_MGUN = SpriteNum 88

pattern SPR_CSAW :: SpriteNum
pattern SPR_CSAW = SpriteNum 89

pattern SPR_LAUN :: SpriteNum
pattern SPR_LAUN = SpriteNum 90

pattern SPR_PLAS :: SpriteNum
pattern SPR_PLAS = SpriteNum 91

pattern SPR_SHOT :: SpriteNum
pattern SPR_SHOT = SpriteNum 92

pattern SPR_SGN2 :: SpriteNum
pattern SPR_SGN2 = SpriteNum 93

pattern SPR_COLU :: SpriteNum
pattern SPR_COLU = SpriteNum 94

pattern SPR_SMT2 :: SpriteNum
pattern SPR_SMT2 = SpriteNum 95

pattern SPR_GOR1 :: SpriteNum
pattern SPR_GOR1 = SpriteNum 96

pattern SPR_POL2 :: SpriteNum
pattern SPR_POL2 = SpriteNum 97

pattern SPR_POL5 :: SpriteNum
pattern SPR_POL5 = SpriteNum 98

pattern SPR_POL4 :: SpriteNum
pattern SPR_POL4 = SpriteNum 99

pattern SPR_POL3 :: SpriteNum
pattern SPR_POL3 = SpriteNum 100

pattern SPR_POL1 :: SpriteNum
pattern SPR_POL1 = SpriteNum 101

pattern SPR_POL6 :: SpriteNum
pattern SPR_POL6 = SpriteNum 102

pattern SPR_GOR2 :: SpriteNum
pattern SPR_GOR2 = SpriteNum 103

pattern SPR_GOR3 :: SpriteNum
pattern SPR_GOR3 = SpriteNum 104

pattern SPR_GOR4 :: SpriteNum
pattern SPR_GOR4 = SpriteNum 105

pattern SPR_GOR5 :: SpriteNum
pattern SPR_GOR5 = SpriteNum 106

pattern SPR_SMIT :: SpriteNum
pattern SPR_SMIT = SpriteNum 107

pattern SPR_COL1 :: SpriteNum
pattern SPR_COL1 = SpriteNum 108

pattern SPR_COL2 :: SpriteNum
pattern SPR_COL2 = SpriteNum 109

pattern SPR_COL3 :: SpriteNum
pattern SPR_COL3 = SpriteNum 110

pattern SPR_COL4 :: SpriteNum
pattern SPR_COL4 = SpriteNum 111

pattern SPR_CAND :: SpriteNum
pattern SPR_CAND = SpriteNum 112

pattern SPR_CBRA :: SpriteNum
pattern SPR_CBRA = SpriteNum 113

pattern SPR_COL6 :: SpriteNum
pattern SPR_COL6 = SpriteNum 114

pattern SPR_TRE1 :: SpriteNum
pattern SPR_TRE1 = SpriteNum 115

pattern SPR_TRE2 :: SpriteNum
pattern SPR_TRE2 = SpriteNum 116

pattern SPR_ELEC :: SpriteNum
pattern SPR_ELEC = SpriteNum 117

pattern SPR_CEYE :: SpriteNum
pattern SPR_CEYE = SpriteNum 118

pattern SPR_FSKU :: SpriteNum
pattern SPR_FSKU = SpriteNum 119

pattern SPR_COL5 :: SpriteNum
pattern SPR_COL5 = SpriteNum 120

pattern SPR_TBLU :: SpriteNum
pattern SPR_TBLU = SpriteNum 121

pattern SPR_TGRN :: SpriteNum
pattern SPR_TGRN = SpriteNum 122

pattern SPR_TRED :: SpriteNum
pattern SPR_TRED = SpriteNum 123

pattern SPR_SMBT :: SpriteNum
pattern SPR_SMBT = SpriteNum 124

pattern SPR_SMGT :: SpriteNum
pattern SPR_SMGT = SpriteNum 125

pattern SPR_SMRT :: SpriteNum
pattern SPR_SMRT = SpriteNum 126

pattern SPR_HDB1 :: SpriteNum
pattern SPR_HDB1 = SpriteNum 127

pattern SPR_HDB2 :: SpriteNum
pattern SPR_HDB2 = SpriteNum 128

pattern SPR_HDB3 :: SpriteNum
pattern SPR_HDB3 = SpriteNum 129

pattern SPR_HDB4 :: SpriteNum
pattern SPR_HDB4 = SpriteNum 130

pattern SPR_HDB5 :: SpriteNum
pattern SPR_HDB5 = SpriteNum 131

pattern SPR_HDB6 :: SpriteNum
pattern SPR_HDB6 = SpriteNum 132

pattern SPR_POB1 :: SpriteNum
pattern SPR_POB1 = SpriteNum 133

pattern SPR_POB2 :: SpriteNum
pattern SPR_POB2 = SpriteNum 134

pattern SPR_BRS1 :: SpriteNum
pattern SPR_BRS1 = SpriteNum 135

pattern SPR_TLMP :: SpriteNum
pattern SPR_TLMP = SpriteNum 136

pattern SPR_TLP2 :: SpriteNum
pattern SPR_TLP2 = SpriteNum 137


parseSpriteNum :: String -> Maybe (SpriteNum, String)
parseSpriteNum input = case lex input of
    [("SPR_TROO", rest)] -> Just (SPR_TROO, rest)
    [("SPR_SHTG", rest)] -> Just (SPR_SHTG, rest)
    [("SPR_PUNG", rest)] -> Just (SPR_PUNG, rest)
    [("SPR_PISG", rest)] -> Just (SPR_PISG, rest)
    [("SPR_PISF", rest)] -> Just (SPR_PISF, rest)
    [("SPR_SHTF", rest)] -> Just (SPR_SHTF, rest)
    [("SPR_SHT2", rest)] -> Just (SPR_SHT2, rest)
    [("SPR_CHGG", rest)] -> Just (SPR_CHGG, rest)
    [("SPR_CHGF", rest)] -> Just (SPR_CHGF, rest)
    [("SPR_MISG", rest)] -> Just (SPR_MISG, rest)
    [("SPR_MISF", rest)] -> Just (SPR_MISF, rest)
    [("SPR_SAWG", rest)] -> Just (SPR_SAWG, rest)
    [("SPR_PLSG", rest)] -> Just (SPR_PLSG, rest)
    [("SPR_PLSF", rest)] -> Just (SPR_PLSF, rest)
    [("SPR_BFGG", rest)] -> Just (SPR_BFGG, rest)
    [("SPR_BFGF", rest)] -> Just (SPR_BFGF, rest)
    [("SPR_BLUD", rest)] -> Just (SPR_BLUD, rest)
    [("SPR_PUFF", rest)] -> Just (SPR_PUFF, rest)
    [("SPR_BAL1", rest)] -> Just (SPR_BAL1, rest)
    [("SPR_BAL2", rest)] -> Just (SPR_BAL2, rest)
    [("SPR_PLSS", rest)] -> Just (SPR_PLSS, rest)
    [("SPR_PLSE", rest)] -> Just (SPR_PLSE, rest)
    [("SPR_MISL", rest)] -> Just (SPR_MISL, rest)
    [("SPR_BFS1", rest)] -> Just (SPR_BFS1, rest)
    [("SPR_BFE1", rest)] -> Just (SPR_BFE1, rest)
    [("SPR_BFE2", rest)] -> Just (SPR_BFE2, rest)
    [("SPR_TFOG", rest)] -> Just (SPR_TFOG, rest)
    [("SPR_IFOG", rest)] -> Just (SPR_IFOG, rest)
    [("SPR_PLAY", rest)] -> Just (SPR_PLAY, rest)
    [("SPR_POSS", rest)] -> Just (SPR_POSS, rest)
    [("SPR_SPOS", rest)] -> Just (SPR_SPOS, rest)
    [("SPR_VILE", rest)] -> Just (SPR_VILE, rest)
    [("SPR_FIRE", rest)] -> Just (SPR_FIRE, rest)
    [("SPR_FATB", rest)] -> Just (SPR_FATB, rest)
    [("SPR_FBXP", rest)] -> Just (SPR_FBXP, rest)
    [("SPR_SKEL", rest)] -> Just (SPR_SKEL, rest)
    [("SPR_MANF", rest)] -> Just (SPR_MANF, rest)
    [("SPR_FATT", rest)] -> Just (SPR_FATT, rest)
    [("SPR_CPOS", rest)] -> Just (SPR_CPOS, rest)
    [("SPR_SARG", rest)] -> Just (SPR_SARG, rest)
    [("SPR_HEAD", rest)] -> Just (SPR_HEAD, rest)
    [("SPR_BAL7", rest)] -> Just (SPR_BAL7, rest)
    [("SPR_BOSS", rest)] -> Just (SPR_BOSS, rest)
    [("SPR_BOS2", rest)] -> Just (SPR_BOS2, rest)
    [("SPR_SKUL", rest)] -> Just (SPR_SKUL, rest)
    [("SPR_SPID", rest)] -> Just (SPR_SPID, rest)
    [("SPR_BSPI", rest)] -> Just (SPR_BSPI, rest)
    [("SPR_APLS", rest)] -> Just (SPR_APLS, rest)
    [("SPR_APBX", rest)] -> Just (SPR_APBX, rest)
    [("SPR_CYBR", rest)] -> Just (SPR_CYBR, rest)
    [("SPR_PAIN", rest)] -> Just (SPR_PAIN, rest)
    [("SPR_SSWV", rest)] -> Just (SPR_SSWV, rest)
    [("SPR_KEEN", rest)] -> Just (SPR_KEEN, rest)
    [("SPR_BBRN", rest)] -> Just (SPR_BBRN, rest)
    [("SPR_BOSF", rest)] -> Just (SPR_BOSF, rest)
    [("SPR_ARM1", rest)] -> Just (SPR_ARM1, rest)
    [("SPR_ARM2", rest)] -> Just (SPR_ARM2, rest)
    [("SPR_BAR1", rest)] -> Just (SPR_BAR1, rest)
    [("SPR_BEXP", rest)] -> Just (SPR_BEXP, rest)
    [("SPR_FCAN", rest)] -> Just (SPR_FCAN, rest)
    [("SPR_BON1", rest)] -> Just (SPR_BON1, rest)
    [("SPR_BON2", rest)] -> Just (SPR_BON2, rest)
    [("SPR_BKEY", rest)] -> Just (SPR_BKEY, rest)
    [("SPR_RKEY", rest)] -> Just (SPR_RKEY, rest)
    [("SPR_YKEY", rest)] -> Just (SPR_YKEY, rest)
    [("SPR_BSKU", rest)] -> Just (SPR_BSKU, rest)
    [("SPR_RSKU", rest)] -> Just (SPR_RSKU, rest)
    [("SPR_YSKU", rest)] -> Just (SPR_YSKU, rest)
    [("SPR_STIM", rest)] -> Just (SPR_STIM, rest)
    [("SPR_MEDI", rest)] -> Just (SPR_MEDI, rest)
    [("SPR_SOUL", rest)] -> Just (SPR_SOUL, rest)
    [("SPR_PINV", rest)] -> Just (SPR_PINV, rest)
    [("SPR_PSTR", rest)] -> Just (SPR_PSTR, rest)
    [("SPR_PINS", rest)] -> Just (SPR_PINS, rest)
    [("SPR_MEGA", rest)] -> Just (SPR_MEGA, rest)
    [("SPR_SUIT", rest)] -> Just (SPR_SUIT, rest)
    [("SPR_PMAP", rest)] -> Just (SPR_PMAP, rest)
    [("SPR_PVIS", rest)] -> Just (SPR_PVIS, rest)
    [("SPR_CLIP", rest)] -> Just (SPR_CLIP, rest)
    [("SPR_AMMO", rest)] -> Just (SPR_AMMO, rest)
    [("SPR_ROCK", rest)] -> Just (SPR_ROCK, rest)
    [("SPR_BROK", rest)] -> Just (SPR_BROK, rest)
    [("SPR_CELL", rest)] -> Just (SPR_CELL, rest)
    [("SPR_CELP", rest)] -> Just (SPR_CELP, rest)
    [("SPR_SHEL", rest)] -> Just (SPR_SHEL, rest)
    [("SPR_SBOX", rest)] -> Just (SPR_SBOX, rest)
    [("SPR_BPAK", rest)] -> Just (SPR_BPAK, rest)
    [("SPR_BFUG", rest)] -> Just (SPR_BFUG, rest)
    [("SPR_MGUN", rest)] -> Just (SPR_MGUN, rest)
    [("SPR_CSAW", rest)] -> Just (SPR_CSAW, rest)
    [("SPR_LAUN", rest)] -> Just (SPR_LAUN, rest)
    [("SPR_PLAS", rest)] -> Just (SPR_PLAS, rest)
    [("SPR_SHOT", rest)] -> Just (SPR_SHOT, rest)
    [("SPR_SGN2", rest)] -> Just (SPR_SGN2, rest)
    [("SPR_COLU", rest)] -> Just (SPR_COLU, rest)
    [("SPR_SMT2", rest)] -> Just (SPR_SMT2, rest)
    [("SPR_GOR1", rest)] -> Just (SPR_GOR1, rest)
    [("SPR_POL2", rest)] -> Just (SPR_POL2, rest)
    [("SPR_POL5", rest)] -> Just (SPR_POL5, rest)
    [("SPR_POL4", rest)] -> Just (SPR_POL4, rest)
    [("SPR_POL3", rest)] -> Just (SPR_POL3, rest)
    [("SPR_POL1", rest)] -> Just (SPR_POL1, rest)
    [("SPR_POL6", rest)] -> Just (SPR_POL6, rest)
    [("SPR_GOR2", rest)] -> Just (SPR_GOR2, rest)
    [("SPR_GOR3", rest)] -> Just (SPR_GOR3, rest)
    [("SPR_GOR4", rest)] -> Just (SPR_GOR4, rest)
    [("SPR_GOR5", rest)] -> Just (SPR_GOR5, rest)
    [("SPR_SMIT", rest)] -> Just (SPR_SMIT, rest)
    [("SPR_COL1", rest)] -> Just (SPR_COL1, rest)
    [("SPR_COL2", rest)] -> Just (SPR_COL2, rest)
    [("SPR_COL3", rest)] -> Just (SPR_COL3, rest)
    [("SPR_COL4", rest)] -> Just (SPR_COL4, rest)
    [("SPR_CAND", rest)] -> Just (SPR_CAND, rest)
    [("SPR_CBRA", rest)] -> Just (SPR_CBRA, rest)
    [("SPR_COL6", rest)] -> Just (SPR_COL6, rest)
    [("SPR_TRE1", rest)] -> Just (SPR_TRE1, rest)
    [("SPR_TRE2", rest)] -> Just (SPR_TRE2, rest)
    [("SPR_ELEC", rest)] -> Just (SPR_ELEC, rest)
    [("SPR_CEYE", rest)] -> Just (SPR_CEYE, rest)
    [("SPR_FSKU", rest)] -> Just (SPR_FSKU, rest)
    [("SPR_COL5", rest)] -> Just (SPR_COL5, rest)
    [("SPR_TBLU", rest)] -> Just (SPR_TBLU, rest)
    [("SPR_TGRN", rest)] -> Just (SPR_TGRN, rest)
    [("SPR_TRED", rest)] -> Just (SPR_TRED, rest)
    [("SPR_SMBT", rest)] -> Just (SPR_SMBT, rest)
    [("SPR_SMGT", rest)] -> Just (SPR_SMGT, rest)
    [("SPR_SMRT", rest)] -> Just (SPR_SMRT, rest)
    [("SPR_HDB1", rest)] -> Just (SPR_HDB1, rest)
    [("SPR_HDB2", rest)] -> Just (SPR_HDB2, rest)
    [("SPR_HDB3", rest)] -> Just (SPR_HDB3, rest)
    [("SPR_HDB4", rest)] -> Just (SPR_HDB4, rest)
    [("SPR_HDB5", rest)] -> Just (SPR_HDB5, rest)
    [("SPR_HDB6", rest)] -> Just (SPR_HDB6, rest)
    [("SPR_POB1", rest)] -> Just (SPR_POB1, rest)
    [("SPR_POB2", rest)] -> Just (SPR_POB2, rest)
    [("SPR_BRS1", rest)] -> Just (SPR_BRS1, rest)
    [("SPR_TLMP", rest)] -> Just (SPR_TLMP, rest)
    [("SPR_TLP2", rest)] -> Just (SPR_TLP2, rest)
    _ -> Nothing

instance Read SpriteNum where
    readsPrec _ = maybe [] (:[]) . parseSpriteNum

instance Bounded SpriteNum where
    minBound = SpriteNum 0
    maxBound = SpriteNum 137

instance Enum SpriteNum where
    fromEnum (SpriteNum i) = i
    toEnum i =
        let limit = fromEnum (maxBound :: SpriteNum) in
        if 0 <= i && i <= limit
            then SpriteNum i
            else error $ "toEnum{SpriteNum}: tag (" ++ show i ++ ") is out of range [0," ++ show limit ++ "]"
