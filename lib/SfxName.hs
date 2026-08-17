{-# LANGUAGE PatternSynonyms #-}
module SfxName where

newtype SfxName = SfxName Int deriving (Eq,Ord)

instance Show SfxName where
    showsPrec _ SFX_NONE = showString "SFX_NONE"
    showsPrec _ SFX_PISTOL = showString "SFX_PISTOL"
    showsPrec _ SFX_SHOTGN = showString "SFX_SHOTGN"
    showsPrec _ SFX_SGCOCK = showString "SFX_SGCOCK"
    showsPrec _ SFX_DSHTGN = showString "SFX_DSHTGN"
    showsPrec _ SFX_DBOPN = showString "SFX_DBOPN"
    showsPrec _ SFX_DBCLS = showString "SFX_DBCLS"
    showsPrec _ SFX_DBLOAD = showString "SFX_DBLOAD"
    showsPrec _ SFX_PLASMA = showString "SFX_PLASMA"
    showsPrec _ SFX_BFG = showString "SFX_BFG"
    showsPrec _ SFX_SAWUP = showString "SFX_SAWUP"
    showsPrec _ SFX_SAWIDL = showString "SFX_SAWIDL"
    showsPrec _ SFX_SAWFUL = showString "SFX_SAWFUL"
    showsPrec _ SFX_SAWHIT = showString "SFX_SAWHIT"
    showsPrec _ SFX_RLAUNC = showString "SFX_RLAUNC"
    showsPrec _ SFX_RXPLOD = showString "SFX_RXPLOD"
    showsPrec _ SFX_FIRSHT = showString "SFX_FIRSHT"
    showsPrec _ SFX_FIRXPL = showString "SFX_FIRXPL"
    showsPrec _ SFX_PSTART = showString "SFX_PSTART"
    showsPrec _ SFX_PSTOP = showString "SFX_PSTOP"
    showsPrec _ SFX_DOROPN = showString "SFX_DOROPN"
    showsPrec _ SFX_DORCLS = showString "SFX_DORCLS"
    showsPrec _ SFX_STNMOV = showString "SFX_STNMOV"
    showsPrec _ SFX_SWTCHN = showString "SFX_SWTCHN"
    showsPrec _ SFX_SWTCHX = showString "SFX_SWTCHX"
    showsPrec _ SFX_PLPAIN = showString "SFX_PLPAIN"
    showsPrec _ SFX_DMPAIN = showString "SFX_DMPAIN"
    showsPrec _ SFX_POPAIN = showString "SFX_POPAIN"
    showsPrec _ SFX_VIPAIN = showString "SFX_VIPAIN"
    showsPrec _ SFX_MNPAIN = showString "SFX_MNPAIN"
    showsPrec _ SFX_PEPAIN = showString "SFX_PEPAIN"
    showsPrec _ SFX_SLOP = showString "SFX_SLOP"
    showsPrec _ SFX_ITEMUP = showString "SFX_ITEMUP"
    showsPrec _ SFX_WPNUP = showString "SFX_WPNUP"
    showsPrec _ SFX_OOF = showString "SFX_OOF"
    showsPrec _ SFX_TELEPT = showString "SFX_TELEPT"
    showsPrec _ SFX_POSIT1 = showString "SFX_POSIT1"
    showsPrec _ SFX_POSIT2 = showString "SFX_POSIT2"
    showsPrec _ SFX_POSIT3 = showString "SFX_POSIT3"
    showsPrec _ SFX_BGSIT1 = showString "SFX_BGSIT1"
    showsPrec _ SFX_BGSIT2 = showString "SFX_BGSIT2"
    showsPrec _ SFX_SGTSIT = showString "SFX_SGTSIT"
    showsPrec _ SFX_CACSIT = showString "SFX_CACSIT"
    showsPrec _ SFX_BRSSIT = showString "SFX_BRSSIT"
    showsPrec _ SFX_CYBSIT = showString "SFX_CYBSIT"
    showsPrec _ SFX_SPISIT = showString "SFX_SPISIT"
    showsPrec _ SFX_BSPSIT = showString "SFX_BSPSIT"
    showsPrec _ SFX_KNTSIT = showString "SFX_KNTSIT"
    showsPrec _ SFX_VILSIT = showString "SFX_VILSIT"
    showsPrec _ SFX_MANSIT = showString "SFX_MANSIT"
    showsPrec _ SFX_PESIT = showString "SFX_PESIT"
    showsPrec _ SFX_SKLATK = showString "SFX_SKLATK"
    showsPrec _ SFX_SGTATK = showString "SFX_SGTATK"
    showsPrec _ SFX_SKEPCH = showString "SFX_SKEPCH"
    showsPrec _ SFX_VILATK = showString "SFX_VILATK"
    showsPrec _ SFX_CLAW = showString "SFX_CLAW"
    showsPrec _ SFX_SKESWG = showString "SFX_SKESWG"
    showsPrec _ SFX_PLDETH = showString "SFX_PLDETH"
    showsPrec _ SFX_PDIEHI = showString "SFX_PDIEHI"
    showsPrec _ SFX_PODTH1 = showString "SFX_PODTH1"
    showsPrec _ SFX_PODTH2 = showString "SFX_PODTH2"
    showsPrec _ SFX_PODTH3 = showString "SFX_PODTH3"
    showsPrec _ SFX_BGDTH1 = showString "SFX_BGDTH1"
    showsPrec _ SFX_BGDTH2 = showString "SFX_BGDTH2"
    showsPrec _ SFX_SGTDTH = showString "SFX_SGTDTH"
    showsPrec _ SFX_CACDTH = showString "SFX_CACDTH"
    showsPrec _ SFX_SKLDTH = showString "SFX_SKLDTH"
    showsPrec _ SFX_BRSDTH = showString "SFX_BRSDTH"
    showsPrec _ SFX_CYBDTH = showString "SFX_CYBDTH"
    showsPrec _ SFX_SPIDTH = showString "SFX_SPIDTH"
    showsPrec _ SFX_BSPDTH = showString "SFX_BSPDTH"
    showsPrec _ SFX_VILDTH = showString "SFX_VILDTH"
    showsPrec _ SFX_KNTDTH = showString "SFX_KNTDTH"
    showsPrec _ SFX_PEDTH = showString "SFX_PEDTH"
    showsPrec _ SFX_SKEDTH = showString "SFX_SKEDTH"
    showsPrec _ SFX_POSACT = showString "SFX_POSACT"
    showsPrec _ SFX_BGACT = showString "SFX_BGACT"
    showsPrec _ SFX_DMACT = showString "SFX_DMACT"
    showsPrec _ SFX_BSPACT = showString "SFX_BSPACT"
    showsPrec _ SFX_BSPWLK = showString "SFX_BSPWLK"
    showsPrec _ SFX_VILACT = showString "SFX_VILACT"
    showsPrec _ SFX_NOWAY = showString "SFX_NOWAY"
    showsPrec _ SFX_BAREXP = showString "SFX_BAREXP"
    showsPrec _ SFX_PUNCH = showString "SFX_PUNCH"
    showsPrec _ SFX_HOOF = showString "SFX_HOOF"
    showsPrec _ SFX_METAL = showString "SFX_METAL"
    showsPrec _ SFX_CHGUN = showString "SFX_CHGUN"
    showsPrec _ SFX_TINK = showString "SFX_TINK"
    showsPrec _ SFX_BDOPN = showString "SFX_BDOPN"
    showsPrec _ SFX_BDCLS = showString "SFX_BDCLS"
    showsPrec _ SFX_ITMBK = showString "SFX_ITMBK"
    showsPrec _ SFX_FLAME = showString "SFX_FLAME"
    showsPrec _ SFX_FLAMST = showString "SFX_FLAMST"
    showsPrec _ SFX_GETPOW = showString "SFX_GETPOW"
    showsPrec _ SFX_BOSPIT = showString "SFX_BOSPIT"
    showsPrec _ SFX_BOSCUB = showString "SFX_BOSCUB"
    showsPrec _ SFX_BOSSIT = showString "SFX_BOSSIT"
    showsPrec _ SFX_BOSPN = showString "SFX_BOSPN"
    showsPrec _ SFX_BOSDTH = showString "SFX_BOSDTH"
    showsPrec _ SFX_MANATK = showString "SFX_MANATK"
    showsPrec _ SFX_MANDTH = showString "SFX_MANDTH"
    showsPrec _ SFX_SSSIT = showString "SFX_SSSIT"
    showsPrec _ SFX_SSDTH = showString "SFX_SSDTH"
    showsPrec _ SFX_KEENPN = showString "SFX_KEENPN"
    showsPrec _ SFX_KEENDT = showString "SFX_KEENDT"
    showsPrec _ SFX_SKEACT = showString "SFX_SKEACT"
    showsPrec _ SFX_SKESIT = showString "SFX_SKESIT"
    showsPrec _ SFX_SKEATK = showString "SFX_SKEATK"
    showsPrec _ SFX_RADIO = showString "SFX_RADIO"
    showsPrec d (SfxName i) = showString "SfxName " . showsPrec d i

pattern SFX_NONE :: SfxName
pattern SFX_NONE = SfxName 0

pattern SFX_PISTOL :: SfxName
pattern SFX_PISTOL = SfxName 1

pattern SFX_SHOTGN :: SfxName
pattern SFX_SHOTGN = SfxName 2

pattern SFX_SGCOCK :: SfxName
pattern SFX_SGCOCK = SfxName 3

pattern SFX_DSHTGN :: SfxName
pattern SFX_DSHTGN = SfxName 4

pattern SFX_DBOPN :: SfxName
pattern SFX_DBOPN = SfxName 5

pattern SFX_DBCLS :: SfxName
pattern SFX_DBCLS = SfxName 6

pattern SFX_DBLOAD :: SfxName
pattern SFX_DBLOAD = SfxName 7

pattern SFX_PLASMA :: SfxName
pattern SFX_PLASMA = SfxName 8

pattern SFX_BFG :: SfxName
pattern SFX_BFG = SfxName 9

pattern SFX_SAWUP :: SfxName
pattern SFX_SAWUP = SfxName 10

pattern SFX_SAWIDL :: SfxName
pattern SFX_SAWIDL = SfxName 11

pattern SFX_SAWFUL :: SfxName
pattern SFX_SAWFUL = SfxName 12

pattern SFX_SAWHIT :: SfxName
pattern SFX_SAWHIT = SfxName 13

pattern SFX_RLAUNC :: SfxName
pattern SFX_RLAUNC = SfxName 14

pattern SFX_RXPLOD :: SfxName
pattern SFX_RXPLOD = SfxName 15

pattern SFX_FIRSHT :: SfxName
pattern SFX_FIRSHT = SfxName 16

pattern SFX_FIRXPL :: SfxName
pattern SFX_FIRXPL = SfxName 17

pattern SFX_PSTART :: SfxName
pattern SFX_PSTART = SfxName 18

pattern SFX_PSTOP :: SfxName
pattern SFX_PSTOP = SfxName 19

pattern SFX_DOROPN :: SfxName
pattern SFX_DOROPN = SfxName 20

pattern SFX_DORCLS :: SfxName
pattern SFX_DORCLS = SfxName 21

pattern SFX_STNMOV :: SfxName
pattern SFX_STNMOV = SfxName 22

pattern SFX_SWTCHN :: SfxName
pattern SFX_SWTCHN = SfxName 23

pattern SFX_SWTCHX :: SfxName
pattern SFX_SWTCHX = SfxName 24

pattern SFX_PLPAIN :: SfxName
pattern SFX_PLPAIN = SfxName 25

pattern SFX_DMPAIN :: SfxName
pattern SFX_DMPAIN = SfxName 26

pattern SFX_POPAIN :: SfxName
pattern SFX_POPAIN = SfxName 27

pattern SFX_VIPAIN :: SfxName
pattern SFX_VIPAIN = SfxName 28

pattern SFX_MNPAIN :: SfxName
pattern SFX_MNPAIN = SfxName 29

pattern SFX_PEPAIN :: SfxName
pattern SFX_PEPAIN = SfxName 30

pattern SFX_SLOP :: SfxName
pattern SFX_SLOP = SfxName 31

pattern SFX_ITEMUP :: SfxName
pattern SFX_ITEMUP = SfxName 32

pattern SFX_WPNUP :: SfxName
pattern SFX_WPNUP = SfxName 33

pattern SFX_OOF :: SfxName
pattern SFX_OOF = SfxName 34

pattern SFX_TELEPT :: SfxName
pattern SFX_TELEPT = SfxName 35

pattern SFX_POSIT1 :: SfxName
pattern SFX_POSIT1 = SfxName 36

pattern SFX_POSIT2 :: SfxName
pattern SFX_POSIT2 = SfxName 37

pattern SFX_POSIT3 :: SfxName
pattern SFX_POSIT3 = SfxName 38

pattern SFX_BGSIT1 :: SfxName
pattern SFX_BGSIT1 = SfxName 39

pattern SFX_BGSIT2 :: SfxName
pattern SFX_BGSIT2 = SfxName 40

pattern SFX_SGTSIT :: SfxName
pattern SFX_SGTSIT = SfxName 41

pattern SFX_CACSIT :: SfxName
pattern SFX_CACSIT = SfxName 42

pattern SFX_BRSSIT :: SfxName
pattern SFX_BRSSIT = SfxName 43

pattern SFX_CYBSIT :: SfxName
pattern SFX_CYBSIT = SfxName 44

pattern SFX_SPISIT :: SfxName
pattern SFX_SPISIT = SfxName 45

pattern SFX_BSPSIT :: SfxName
pattern SFX_BSPSIT = SfxName 46

pattern SFX_KNTSIT :: SfxName
pattern SFX_KNTSIT = SfxName 47

pattern SFX_VILSIT :: SfxName
pattern SFX_VILSIT = SfxName 48

pattern SFX_MANSIT :: SfxName
pattern SFX_MANSIT = SfxName 49

pattern SFX_PESIT :: SfxName
pattern SFX_PESIT = SfxName 50

pattern SFX_SKLATK :: SfxName
pattern SFX_SKLATK = SfxName 51

pattern SFX_SGTATK :: SfxName
pattern SFX_SGTATK = SfxName 52

pattern SFX_SKEPCH :: SfxName
pattern SFX_SKEPCH = SfxName 53

pattern SFX_VILATK :: SfxName
pattern SFX_VILATK = SfxName 54

pattern SFX_CLAW :: SfxName
pattern SFX_CLAW = SfxName 55

pattern SFX_SKESWG :: SfxName
pattern SFX_SKESWG = SfxName 56

pattern SFX_PLDETH :: SfxName
pattern SFX_PLDETH = SfxName 57

pattern SFX_PDIEHI :: SfxName
pattern SFX_PDIEHI = SfxName 58

pattern SFX_PODTH1 :: SfxName
pattern SFX_PODTH1 = SfxName 59

pattern SFX_PODTH2 :: SfxName
pattern SFX_PODTH2 = SfxName 60

pattern SFX_PODTH3 :: SfxName
pattern SFX_PODTH3 = SfxName 61

pattern SFX_BGDTH1 :: SfxName
pattern SFX_BGDTH1 = SfxName 62

pattern SFX_BGDTH2 :: SfxName
pattern SFX_BGDTH2 = SfxName 63

pattern SFX_SGTDTH :: SfxName
pattern SFX_SGTDTH = SfxName 64

pattern SFX_CACDTH :: SfxName
pattern SFX_CACDTH = SfxName 65

pattern SFX_SKLDTH :: SfxName
pattern SFX_SKLDTH = SfxName 66

pattern SFX_BRSDTH :: SfxName
pattern SFX_BRSDTH = SfxName 67

pattern SFX_CYBDTH :: SfxName
pattern SFX_CYBDTH = SfxName 68

pattern SFX_SPIDTH :: SfxName
pattern SFX_SPIDTH = SfxName 69

pattern SFX_BSPDTH :: SfxName
pattern SFX_BSPDTH = SfxName 70

pattern SFX_VILDTH :: SfxName
pattern SFX_VILDTH = SfxName 71

pattern SFX_KNTDTH :: SfxName
pattern SFX_KNTDTH = SfxName 72

pattern SFX_PEDTH :: SfxName
pattern SFX_PEDTH = SfxName 73

pattern SFX_SKEDTH :: SfxName
pattern SFX_SKEDTH = SfxName 74

pattern SFX_POSACT :: SfxName
pattern SFX_POSACT = SfxName 75

pattern SFX_BGACT :: SfxName
pattern SFX_BGACT = SfxName 76

pattern SFX_DMACT :: SfxName
pattern SFX_DMACT = SfxName 77

pattern SFX_BSPACT :: SfxName
pattern SFX_BSPACT = SfxName 78

pattern SFX_BSPWLK :: SfxName
pattern SFX_BSPWLK = SfxName 79

pattern SFX_VILACT :: SfxName
pattern SFX_VILACT = SfxName 80

pattern SFX_NOWAY :: SfxName
pattern SFX_NOWAY = SfxName 81

pattern SFX_BAREXP :: SfxName
pattern SFX_BAREXP = SfxName 82

pattern SFX_PUNCH :: SfxName
pattern SFX_PUNCH = SfxName 83

pattern SFX_HOOF :: SfxName
pattern SFX_HOOF = SfxName 84

pattern SFX_METAL :: SfxName
pattern SFX_METAL = SfxName 85

pattern SFX_CHGUN :: SfxName
pattern SFX_CHGUN = SfxName 86

pattern SFX_TINK :: SfxName
pattern SFX_TINK = SfxName 87

pattern SFX_BDOPN :: SfxName
pattern SFX_BDOPN = SfxName 88

pattern SFX_BDCLS :: SfxName
pattern SFX_BDCLS = SfxName 89

pattern SFX_ITMBK :: SfxName
pattern SFX_ITMBK = SfxName 90

pattern SFX_FLAME :: SfxName
pattern SFX_FLAME = SfxName 91

pattern SFX_FLAMST :: SfxName
pattern SFX_FLAMST = SfxName 92

pattern SFX_GETPOW :: SfxName
pattern SFX_GETPOW = SfxName 93

pattern SFX_BOSPIT :: SfxName
pattern SFX_BOSPIT = SfxName 94

pattern SFX_BOSCUB :: SfxName
pattern SFX_BOSCUB = SfxName 95

pattern SFX_BOSSIT :: SfxName
pattern SFX_BOSSIT = SfxName 96

pattern SFX_BOSPN :: SfxName
pattern SFX_BOSPN = SfxName 97

pattern SFX_BOSDTH :: SfxName
pattern SFX_BOSDTH = SfxName 98

pattern SFX_MANATK :: SfxName
pattern SFX_MANATK = SfxName 99

pattern SFX_MANDTH :: SfxName
pattern SFX_MANDTH = SfxName 100

pattern SFX_SSSIT :: SfxName
pattern SFX_SSSIT = SfxName 101

pattern SFX_SSDTH :: SfxName
pattern SFX_SSDTH = SfxName 102

pattern SFX_KEENPN :: SfxName
pattern SFX_KEENPN = SfxName 103

pattern SFX_KEENDT :: SfxName
pattern SFX_KEENDT = SfxName 104

pattern SFX_SKEACT :: SfxName
pattern SFX_SKEACT = SfxName 105

pattern SFX_SKESIT :: SfxName
pattern SFX_SKESIT = SfxName 106

pattern SFX_SKEATK :: SfxName
pattern SFX_SKEATK = SfxName 107

pattern SFX_RADIO :: SfxName
pattern SFX_RADIO = SfxName 108


parseSfxName :: String -> Maybe (SfxName, String)
parseSfxName input = case lex input of
    [("SFX_NONE", rest)] -> Just (SFX_NONE, rest)
    [("SFX_PISTOL", rest)] -> Just (SFX_PISTOL, rest)
    [("SFX_SHOTGN", rest)] -> Just (SFX_SHOTGN, rest)
    [("SFX_SGCOCK", rest)] -> Just (SFX_SGCOCK, rest)
    [("SFX_DSHTGN", rest)] -> Just (SFX_DSHTGN, rest)
    [("SFX_DBOPN", rest)] -> Just (SFX_DBOPN, rest)
    [("SFX_DBCLS", rest)] -> Just (SFX_DBCLS, rest)
    [("SFX_DBLOAD", rest)] -> Just (SFX_DBLOAD, rest)
    [("SFX_PLASMA", rest)] -> Just (SFX_PLASMA, rest)
    [("SFX_BFG", rest)] -> Just (SFX_BFG, rest)
    [("SFX_SAWUP", rest)] -> Just (SFX_SAWUP, rest)
    [("SFX_SAWIDL", rest)] -> Just (SFX_SAWIDL, rest)
    [("SFX_SAWFUL", rest)] -> Just (SFX_SAWFUL, rest)
    [("SFX_SAWHIT", rest)] -> Just (SFX_SAWHIT, rest)
    [("SFX_RLAUNC", rest)] -> Just (SFX_RLAUNC, rest)
    [("SFX_RXPLOD", rest)] -> Just (SFX_RXPLOD, rest)
    [("SFX_FIRSHT", rest)] -> Just (SFX_FIRSHT, rest)
    [("SFX_FIRXPL", rest)] -> Just (SFX_FIRXPL, rest)
    [("SFX_PSTART", rest)] -> Just (SFX_PSTART, rest)
    [("SFX_PSTOP", rest)] -> Just (SFX_PSTOP, rest)
    [("SFX_DOROPN", rest)] -> Just (SFX_DOROPN, rest)
    [("SFX_DORCLS", rest)] -> Just (SFX_DORCLS, rest)
    [("SFX_STNMOV", rest)] -> Just (SFX_STNMOV, rest)
    [("SFX_SWTCHN", rest)] -> Just (SFX_SWTCHN, rest)
    [("SFX_SWTCHX", rest)] -> Just (SFX_SWTCHX, rest)
    [("SFX_PLPAIN", rest)] -> Just (SFX_PLPAIN, rest)
    [("SFX_DMPAIN", rest)] -> Just (SFX_DMPAIN, rest)
    [("SFX_POPAIN", rest)] -> Just (SFX_POPAIN, rest)
    [("SFX_VIPAIN", rest)] -> Just (SFX_VIPAIN, rest)
    [("SFX_MNPAIN", rest)] -> Just (SFX_MNPAIN, rest)
    [("SFX_PEPAIN", rest)] -> Just (SFX_PEPAIN, rest)
    [("SFX_SLOP", rest)] -> Just (SFX_SLOP, rest)
    [("SFX_ITEMUP", rest)] -> Just (SFX_ITEMUP, rest)
    [("SFX_WPNUP", rest)] -> Just (SFX_WPNUP, rest)
    [("SFX_OOF", rest)] -> Just (SFX_OOF, rest)
    [("SFX_TELEPT", rest)] -> Just (SFX_TELEPT, rest)
    [("SFX_POSIT1", rest)] -> Just (SFX_POSIT1, rest)
    [("SFX_POSIT2", rest)] -> Just (SFX_POSIT2, rest)
    [("SFX_POSIT3", rest)] -> Just (SFX_POSIT3, rest)
    [("SFX_BGSIT1", rest)] -> Just (SFX_BGSIT1, rest)
    [("SFX_BGSIT2", rest)] -> Just (SFX_BGSIT2, rest)
    [("SFX_SGTSIT", rest)] -> Just (SFX_SGTSIT, rest)
    [("SFX_CACSIT", rest)] -> Just (SFX_CACSIT, rest)
    [("SFX_BRSSIT", rest)] -> Just (SFX_BRSSIT, rest)
    [("SFX_CYBSIT", rest)] -> Just (SFX_CYBSIT, rest)
    [("SFX_SPISIT", rest)] -> Just (SFX_SPISIT, rest)
    [("SFX_BSPSIT", rest)] -> Just (SFX_BSPSIT, rest)
    [("SFX_KNTSIT", rest)] -> Just (SFX_KNTSIT, rest)
    [("SFX_VILSIT", rest)] -> Just (SFX_VILSIT, rest)
    [("SFX_MANSIT", rest)] -> Just (SFX_MANSIT, rest)
    [("SFX_PESIT", rest)] -> Just (SFX_PESIT, rest)
    [("SFX_SKLATK", rest)] -> Just (SFX_SKLATK, rest)
    [("SFX_SGTATK", rest)] -> Just (SFX_SGTATK, rest)
    [("SFX_SKEPCH", rest)] -> Just (SFX_SKEPCH, rest)
    [("SFX_VILATK", rest)] -> Just (SFX_VILATK, rest)
    [("SFX_CLAW", rest)] -> Just (SFX_CLAW, rest)
    [("SFX_SKESWG", rest)] -> Just (SFX_SKESWG, rest)
    [("SFX_PLDETH", rest)] -> Just (SFX_PLDETH, rest)
    [("SFX_PDIEHI", rest)] -> Just (SFX_PDIEHI, rest)
    [("SFX_PODTH1", rest)] -> Just (SFX_PODTH1, rest)
    [("SFX_PODTH2", rest)] -> Just (SFX_PODTH2, rest)
    [("SFX_PODTH3", rest)] -> Just (SFX_PODTH3, rest)
    [("SFX_BGDTH1", rest)] -> Just (SFX_BGDTH1, rest)
    [("SFX_BGDTH2", rest)] -> Just (SFX_BGDTH2, rest)
    [("SFX_SGTDTH", rest)] -> Just (SFX_SGTDTH, rest)
    [("SFX_CACDTH", rest)] -> Just (SFX_CACDTH, rest)
    [("SFX_SKLDTH", rest)] -> Just (SFX_SKLDTH, rest)
    [("SFX_BRSDTH", rest)] -> Just (SFX_BRSDTH, rest)
    [("SFX_CYBDTH", rest)] -> Just (SFX_CYBDTH, rest)
    [("SFX_SPIDTH", rest)] -> Just (SFX_SPIDTH, rest)
    [("SFX_BSPDTH", rest)] -> Just (SFX_BSPDTH, rest)
    [("SFX_VILDTH", rest)] -> Just (SFX_VILDTH, rest)
    [("SFX_KNTDTH", rest)] -> Just (SFX_KNTDTH, rest)
    [("SFX_PEDTH", rest)] -> Just (SFX_PEDTH, rest)
    [("SFX_SKEDTH", rest)] -> Just (SFX_SKEDTH, rest)
    [("SFX_POSACT", rest)] -> Just (SFX_POSACT, rest)
    [("SFX_BGACT", rest)] -> Just (SFX_BGACT, rest)
    [("SFX_DMACT", rest)] -> Just (SFX_DMACT, rest)
    [("SFX_BSPACT", rest)] -> Just (SFX_BSPACT, rest)
    [("SFX_BSPWLK", rest)] -> Just (SFX_BSPWLK, rest)
    [("SFX_VILACT", rest)] -> Just (SFX_VILACT, rest)
    [("SFX_NOWAY", rest)] -> Just (SFX_NOWAY, rest)
    [("SFX_BAREXP", rest)] -> Just (SFX_BAREXP, rest)
    [("SFX_PUNCH", rest)] -> Just (SFX_PUNCH, rest)
    [("SFX_HOOF", rest)] -> Just (SFX_HOOF, rest)
    [("SFX_METAL", rest)] -> Just (SFX_METAL, rest)
    [("SFX_CHGUN", rest)] -> Just (SFX_CHGUN, rest)
    [("SFX_TINK", rest)] -> Just (SFX_TINK, rest)
    [("SFX_BDOPN", rest)] -> Just (SFX_BDOPN, rest)
    [("SFX_BDCLS", rest)] -> Just (SFX_BDCLS, rest)
    [("SFX_ITMBK", rest)] -> Just (SFX_ITMBK, rest)
    [("SFX_FLAME", rest)] -> Just (SFX_FLAME, rest)
    [("SFX_FLAMST", rest)] -> Just (SFX_FLAMST, rest)
    [("SFX_GETPOW", rest)] -> Just (SFX_GETPOW, rest)
    [("SFX_BOSPIT", rest)] -> Just (SFX_BOSPIT, rest)
    [("SFX_BOSCUB", rest)] -> Just (SFX_BOSCUB, rest)
    [("SFX_BOSSIT", rest)] -> Just (SFX_BOSSIT, rest)
    [("SFX_BOSPN", rest)] -> Just (SFX_BOSPN, rest)
    [("SFX_BOSDTH", rest)] -> Just (SFX_BOSDTH, rest)
    [("SFX_MANATK", rest)] -> Just (SFX_MANATK, rest)
    [("SFX_MANDTH", rest)] -> Just (SFX_MANDTH, rest)
    [("SFX_SSSIT", rest)] -> Just (SFX_SSSIT, rest)
    [("SFX_SSDTH", rest)] -> Just (SFX_SSDTH, rest)
    [("SFX_KEENPN", rest)] -> Just (SFX_KEENPN, rest)
    [("SFX_KEENDT", rest)] -> Just (SFX_KEENDT, rest)
    [("SFX_SKEACT", rest)] -> Just (SFX_SKEACT, rest)
    [("SFX_SKESIT", rest)] -> Just (SFX_SKESIT, rest)
    [("SFX_SKEATK", rest)] -> Just (SFX_SKEATK, rest)
    [("SFX_RADIO", rest)] -> Just (SFX_RADIO, rest)
    _ -> Nothing

instance Read SfxName where
    readsPrec _ = maybe [] (:[]) . parseSfxName

instance Bounded SfxName where
    minBound = SfxName 0
    maxBound = SfxName 108

instance Enum SfxName where
    fromEnum (SfxName i) = i
    toEnum i =
        let limit = fromEnum (maxBound :: SfxName) in
        if 0 <= i && i <= limit
            then SfxName i
            else error $ "toEnum{SfxName}: tag (" ++ show i ++ ") is out of range [0," ++ show limit ++ "]"
