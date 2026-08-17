{-# LANGUAGE PatternSynonyms #-}
module CodePointer where

newtype CodePointer = CodePointer Int deriving (Eq,Ord)

instance Show CodePointer where
    showsPrec _ A_NULL = showString "A_NULL"
    showsPrec _ A_WeaponReady = showString "A_WeaponReady"
    showsPrec _ A_Lower = showString "A_Lower"
    showsPrec _ A_Raise = showString "A_Raise"
    showsPrec _ A_Punch = showString "A_Punch"
    showsPrec _ A_ReFire = showString "A_ReFire"
    showsPrec _ A_FirePistol = showString "A_FirePistol"
    showsPrec _ A_Light1 = showString "A_Light1"
    showsPrec _ A_FireShotgun = showString "A_FireShotgun"
    showsPrec _ A_Light2 = showString "A_Light2"
    showsPrec _ A_FireShotgun2 = showString "A_FireShotgun2"
    showsPrec _ A_CheckReload = showString "A_CheckReload"
    showsPrec _ A_OpenShotgun2 = showString "A_OpenShotgun2"
    showsPrec _ A_LoadShotgun2 = showString "A_LoadShotgun2"
    showsPrec _ A_CloseShotgun2 = showString "A_CloseShotgun2"
    showsPrec _ A_FireCGun = showString "A_FireCGun"
    showsPrec _ A_GunFlash = showString "A_GunFlash"
    showsPrec _ A_FireMissile = showString "A_FireMissile"
    showsPrec _ A_Saw = showString "A_Saw"
    showsPrec _ A_FirePlasma = showString "A_FirePlasma"
    showsPrec _ A_BFGsound = showString "A_BFGsound"
    showsPrec _ A_FireBFG = showString "A_FireBFG"
    showsPrec _ A_BFGSpray = showString "A_BFGSpray"
    showsPrec _ A_Explode = showString "A_Explode"
    showsPrec _ A_Pain = showString "A_Pain"
    showsPrec _ A_PlayerScream = showString "A_PlayerScream"
    showsPrec _ A_Fall = showString "A_Fall"
    showsPrec _ A_XScream = showString "A_XScream"
    showsPrec _ A_Look = showString "A_Look"
    showsPrec _ A_Chase = showString "A_Chase"
    showsPrec _ A_FaceTarget = showString "A_FaceTarget"
    showsPrec _ A_PosAttack = showString "A_PosAttack"
    showsPrec _ A_Scream = showString "A_Scream"
    showsPrec _ A_SPosAttack = showString "A_SPosAttack"
    showsPrec _ A_VileChase = showString "A_VileChase"
    showsPrec _ A_VileStart = showString "A_VileStart"
    showsPrec _ A_VileTarget = showString "A_VileTarget"
    showsPrec _ A_VileAttack = showString "A_VileAttack"
    showsPrec _ A_StartFire = showString "A_StartFire"
    showsPrec _ A_Fire = showString "A_Fire"
    showsPrec _ A_FireCrackle = showString "A_FireCrackle"
    showsPrec _ A_Tracer = showString "A_Tracer"
    showsPrec _ A_SkelWhoosh = showString "A_SkelWhoosh"
    showsPrec _ A_SkelFist = showString "A_SkelFist"
    showsPrec _ A_SkelMissile = showString "A_SkelMissile"
    showsPrec _ A_FatRaise = showString "A_FatRaise"
    showsPrec _ A_FatAttack1 = showString "A_FatAttack1"
    showsPrec _ A_FatAttack2 = showString "A_FatAttack2"
    showsPrec _ A_FatAttack3 = showString "A_FatAttack3"
    showsPrec _ A_BossDeath = showString "A_BossDeath"
    showsPrec _ A_CPosAttack = showString "A_CPosAttack"
    showsPrec _ A_CPosRefire = showString "A_CPosRefire"
    showsPrec _ A_TroopAttack = showString "A_TroopAttack"
    showsPrec _ A_SargAttack = showString "A_SargAttack"
    showsPrec _ A_HeadAttack = showString "A_HeadAttack"
    showsPrec _ A_BruisAttack = showString "A_BruisAttack"
    showsPrec _ A_SkullAttack = showString "A_SkullAttack"
    showsPrec _ A_Metal = showString "A_Metal"
    showsPrec _ A_SpidRefire = showString "A_SpidRefire"
    showsPrec _ A_BabyMetal = showString "A_BabyMetal"
    showsPrec _ A_BspiAttack = showString "A_BspiAttack"
    showsPrec _ A_Hoof = showString "A_Hoof"
    showsPrec _ A_CyberAttack = showString "A_CyberAttack"
    showsPrec _ A_PainAttack = showString "A_PainAttack"
    showsPrec _ A_PainDie = showString "A_PainDie"
    showsPrec _ A_KeenDie = showString "A_KeenDie"
    showsPrec _ A_BrainPain = showString "A_BrainPain"
    showsPrec _ A_BrainScream = showString "A_BrainScream"
    showsPrec _ A_BrainDie = showString "A_BrainDie"
    showsPrec _ A_BrainAwake = showString "A_BrainAwake"
    showsPrec _ A_BrainSpit = showString "A_BrainSpit"
    showsPrec _ A_SpawnSound = showString "A_SpawnSound"
    showsPrec _ A_SpawnFly = showString "A_SpawnFly"
    showsPrec _ A_BrainExplode = showString "A_BrainExplode"
    showsPrec d (CodePointer i) = showString "CodePointer " . showsPrec d i

pattern A_NULL :: CodePointer
pattern A_NULL = CodePointer 0

pattern A_WeaponReady :: CodePointer
pattern A_WeaponReady = CodePointer 1

pattern A_Lower :: CodePointer
pattern A_Lower = CodePointer 2

pattern A_Raise :: CodePointer
pattern A_Raise = CodePointer 3

pattern A_Punch :: CodePointer
pattern A_Punch = CodePointer 4

pattern A_ReFire :: CodePointer
pattern A_ReFire = CodePointer 5

pattern A_FirePistol :: CodePointer
pattern A_FirePistol = CodePointer 6

pattern A_Light1 :: CodePointer
pattern A_Light1 = CodePointer 7

pattern A_FireShotgun :: CodePointer
pattern A_FireShotgun = CodePointer 8

pattern A_Light2 :: CodePointer
pattern A_Light2 = CodePointer 9

pattern A_FireShotgun2 :: CodePointer
pattern A_FireShotgun2 = CodePointer 10

pattern A_CheckReload :: CodePointer
pattern A_CheckReload = CodePointer 11

pattern A_OpenShotgun2 :: CodePointer
pattern A_OpenShotgun2 = CodePointer 12

pattern A_LoadShotgun2 :: CodePointer
pattern A_LoadShotgun2 = CodePointer 13

pattern A_CloseShotgun2 :: CodePointer
pattern A_CloseShotgun2 = CodePointer 14

pattern A_FireCGun :: CodePointer
pattern A_FireCGun = CodePointer 15

pattern A_GunFlash :: CodePointer
pattern A_GunFlash = CodePointer 16

pattern A_FireMissile :: CodePointer
pattern A_FireMissile = CodePointer 17

pattern A_Saw :: CodePointer
pattern A_Saw = CodePointer 18

pattern A_FirePlasma :: CodePointer
pattern A_FirePlasma = CodePointer 19

pattern A_BFGsound :: CodePointer
pattern A_BFGsound = CodePointer 20

pattern A_FireBFG :: CodePointer
pattern A_FireBFG = CodePointer 21

pattern A_BFGSpray :: CodePointer
pattern A_BFGSpray = CodePointer 22

pattern A_Explode :: CodePointer
pattern A_Explode = CodePointer 23

pattern A_Pain :: CodePointer
pattern A_Pain = CodePointer 24

pattern A_PlayerScream :: CodePointer
pattern A_PlayerScream = CodePointer 25

pattern A_Fall :: CodePointer
pattern A_Fall = CodePointer 26

pattern A_XScream :: CodePointer
pattern A_XScream = CodePointer 27

pattern A_Look :: CodePointer
pattern A_Look = CodePointer 28

pattern A_Chase :: CodePointer
pattern A_Chase = CodePointer 29

pattern A_FaceTarget :: CodePointer
pattern A_FaceTarget = CodePointer 30

pattern A_PosAttack :: CodePointer
pattern A_PosAttack = CodePointer 31

pattern A_Scream :: CodePointer
pattern A_Scream = CodePointer 32

pattern A_SPosAttack :: CodePointer
pattern A_SPosAttack = CodePointer 33

pattern A_VileChase :: CodePointer
pattern A_VileChase = CodePointer 34

pattern A_VileStart :: CodePointer
pattern A_VileStart = CodePointer 35

pattern A_VileTarget :: CodePointer
pattern A_VileTarget = CodePointer 36

pattern A_VileAttack :: CodePointer
pattern A_VileAttack = CodePointer 37

pattern A_StartFire :: CodePointer
pattern A_StartFire = CodePointer 38

pattern A_Fire :: CodePointer
pattern A_Fire = CodePointer 39

pattern A_FireCrackle :: CodePointer
pattern A_FireCrackle = CodePointer 40

pattern A_Tracer :: CodePointer
pattern A_Tracer = CodePointer 41

pattern A_SkelWhoosh :: CodePointer
pattern A_SkelWhoosh = CodePointer 42

pattern A_SkelFist :: CodePointer
pattern A_SkelFist = CodePointer 43

pattern A_SkelMissile :: CodePointer
pattern A_SkelMissile = CodePointer 44

pattern A_FatRaise :: CodePointer
pattern A_FatRaise = CodePointer 45

pattern A_FatAttack1 :: CodePointer
pattern A_FatAttack1 = CodePointer 46

pattern A_FatAttack2 :: CodePointer
pattern A_FatAttack2 = CodePointer 47

pattern A_FatAttack3 :: CodePointer
pattern A_FatAttack3 = CodePointer 48

pattern A_BossDeath :: CodePointer
pattern A_BossDeath = CodePointer 49

pattern A_CPosAttack :: CodePointer
pattern A_CPosAttack = CodePointer 50

pattern A_CPosRefire :: CodePointer
pattern A_CPosRefire = CodePointer 51

pattern A_TroopAttack :: CodePointer
pattern A_TroopAttack = CodePointer 52

pattern A_SargAttack :: CodePointer
pattern A_SargAttack = CodePointer 53

pattern A_HeadAttack :: CodePointer
pattern A_HeadAttack = CodePointer 54

pattern A_BruisAttack :: CodePointer
pattern A_BruisAttack = CodePointer 55

pattern A_SkullAttack :: CodePointer
pattern A_SkullAttack = CodePointer 56

pattern A_Metal :: CodePointer
pattern A_Metal = CodePointer 57

pattern A_SpidRefire :: CodePointer
pattern A_SpidRefire = CodePointer 58

pattern A_BabyMetal :: CodePointer
pattern A_BabyMetal = CodePointer 59

pattern A_BspiAttack :: CodePointer
pattern A_BspiAttack = CodePointer 60

pattern A_Hoof :: CodePointer
pattern A_Hoof = CodePointer 61

pattern A_CyberAttack :: CodePointer
pattern A_CyberAttack = CodePointer 62

pattern A_PainAttack :: CodePointer
pattern A_PainAttack = CodePointer 63

pattern A_PainDie :: CodePointer
pattern A_PainDie = CodePointer 64

pattern A_KeenDie :: CodePointer
pattern A_KeenDie = CodePointer 65

pattern A_BrainPain :: CodePointer
pattern A_BrainPain = CodePointer 66

pattern A_BrainScream :: CodePointer
pattern A_BrainScream = CodePointer 67

pattern A_BrainDie :: CodePointer
pattern A_BrainDie = CodePointer 68

pattern A_BrainAwake :: CodePointer
pattern A_BrainAwake = CodePointer 69

pattern A_BrainSpit :: CodePointer
pattern A_BrainSpit = CodePointer 70

pattern A_SpawnSound :: CodePointer
pattern A_SpawnSound = CodePointer 71

pattern A_SpawnFly :: CodePointer
pattern A_SpawnFly = CodePointer 72

pattern A_BrainExplode :: CodePointer
pattern A_BrainExplode = CodePointer 73


parseCodePointer :: String -> Maybe (CodePointer, String)
parseCodePointer input = case lex input of
    [("A_NULL", rest)] -> Just (A_NULL, rest)
    [("A_WeaponReady", rest)] -> Just (A_WeaponReady, rest)
    [("A_Lower", rest)] -> Just (A_Lower, rest)
    [("A_Raise", rest)] -> Just (A_Raise, rest)
    [("A_Punch", rest)] -> Just (A_Punch, rest)
    [("A_ReFire", rest)] -> Just (A_ReFire, rest)
    [("A_FirePistol", rest)] -> Just (A_FirePistol, rest)
    [("A_Light1", rest)] -> Just (A_Light1, rest)
    [("A_FireShotgun", rest)] -> Just (A_FireShotgun, rest)
    [("A_Light2", rest)] -> Just (A_Light2, rest)
    [("A_FireShotgun2", rest)] -> Just (A_FireShotgun2, rest)
    [("A_CheckReload", rest)] -> Just (A_CheckReload, rest)
    [("A_OpenShotgun2", rest)] -> Just (A_OpenShotgun2, rest)
    [("A_LoadShotgun2", rest)] -> Just (A_LoadShotgun2, rest)
    [("A_CloseShotgun2", rest)] -> Just (A_CloseShotgun2, rest)
    [("A_FireCGun", rest)] -> Just (A_FireCGun, rest)
    [("A_GunFlash", rest)] -> Just (A_GunFlash, rest)
    [("A_FireMissile", rest)] -> Just (A_FireMissile, rest)
    [("A_Saw", rest)] -> Just (A_Saw, rest)
    [("A_FirePlasma", rest)] -> Just (A_FirePlasma, rest)
    [("A_BFGsound", rest)] -> Just (A_BFGsound, rest)
    [("A_FireBFG", rest)] -> Just (A_FireBFG, rest)
    [("A_BFGSpray", rest)] -> Just (A_BFGSpray, rest)
    [("A_Explode", rest)] -> Just (A_Explode, rest)
    [("A_Pain", rest)] -> Just (A_Pain, rest)
    [("A_PlayerScream", rest)] -> Just (A_PlayerScream, rest)
    [("A_Fall", rest)] -> Just (A_Fall, rest)
    [("A_XScream", rest)] -> Just (A_XScream, rest)
    [("A_Look", rest)] -> Just (A_Look, rest)
    [("A_Chase", rest)] -> Just (A_Chase, rest)
    [("A_FaceTarget", rest)] -> Just (A_FaceTarget, rest)
    [("A_PosAttack", rest)] -> Just (A_PosAttack, rest)
    [("A_Scream", rest)] -> Just (A_Scream, rest)
    [("A_SPosAttack", rest)] -> Just (A_SPosAttack, rest)
    [("A_VileChase", rest)] -> Just (A_VileChase, rest)
    [("A_VileStart", rest)] -> Just (A_VileStart, rest)
    [("A_VileTarget", rest)] -> Just (A_VileTarget, rest)
    [("A_VileAttack", rest)] -> Just (A_VileAttack, rest)
    [("A_StartFire", rest)] -> Just (A_StartFire, rest)
    [("A_Fire", rest)] -> Just (A_Fire, rest)
    [("A_FireCrackle", rest)] -> Just (A_FireCrackle, rest)
    [("A_Tracer", rest)] -> Just (A_Tracer, rest)
    [("A_SkelWhoosh", rest)] -> Just (A_SkelWhoosh, rest)
    [("A_SkelFist", rest)] -> Just (A_SkelFist, rest)
    [("A_SkelMissile", rest)] -> Just (A_SkelMissile, rest)
    [("A_FatRaise", rest)] -> Just (A_FatRaise, rest)
    [("A_FatAttack1", rest)] -> Just (A_FatAttack1, rest)
    [("A_FatAttack2", rest)] -> Just (A_FatAttack2, rest)
    [("A_FatAttack3", rest)] -> Just (A_FatAttack3, rest)
    [("A_BossDeath", rest)] -> Just (A_BossDeath, rest)
    [("A_CPosAttack", rest)] -> Just (A_CPosAttack, rest)
    [("A_CPosRefire", rest)] -> Just (A_CPosRefire, rest)
    [("A_TroopAttack", rest)] -> Just (A_TroopAttack, rest)
    [("A_SargAttack", rest)] -> Just (A_SargAttack, rest)
    [("A_HeadAttack", rest)] -> Just (A_HeadAttack, rest)
    [("A_BruisAttack", rest)] -> Just (A_BruisAttack, rest)
    [("A_SkullAttack", rest)] -> Just (A_SkullAttack, rest)
    [("A_Metal", rest)] -> Just (A_Metal, rest)
    [("A_SpidRefire", rest)] -> Just (A_SpidRefire, rest)
    [("A_BabyMetal", rest)] -> Just (A_BabyMetal, rest)
    [("A_BspiAttack", rest)] -> Just (A_BspiAttack, rest)
    [("A_Hoof", rest)] -> Just (A_Hoof, rest)
    [("A_CyberAttack", rest)] -> Just (A_CyberAttack, rest)
    [("A_PainAttack", rest)] -> Just (A_PainAttack, rest)
    [("A_PainDie", rest)] -> Just (A_PainDie, rest)
    [("A_KeenDie", rest)] -> Just (A_KeenDie, rest)
    [("A_BrainPain", rest)] -> Just (A_BrainPain, rest)
    [("A_BrainScream", rest)] -> Just (A_BrainScream, rest)
    [("A_BrainDie", rest)] -> Just (A_BrainDie, rest)
    [("A_BrainAwake", rest)] -> Just (A_BrainAwake, rest)
    [("A_BrainSpit", rest)] -> Just (A_BrainSpit, rest)
    [("A_SpawnSound", rest)] -> Just (A_SpawnSound, rest)
    [("A_SpawnFly", rest)] -> Just (A_SpawnFly, rest)
    [("A_BrainExplode", rest)] -> Just (A_BrainExplode, rest)
    _ -> Nothing

instance Read CodePointer where
    readsPrec _ = maybe [] (:[]) . parseCodePointer

instance Bounded CodePointer where
    minBound = CodePointer 0
    maxBound = CodePointer 73

instance Enum CodePointer where
    fromEnum (CodePointer i) = i
    toEnum i =
        let limit = fromEnum (maxBound :: CodePointer) in
        if 0 <= i && i <= limit
            then CodePointer i
            else error $ "toEnum{CodePointer}: tag (" ++ show i ++ ") is out of range [0," ++ show limit ++ "]"
