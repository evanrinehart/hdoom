{-# LANGUAGE PatternSynonyms #-}
module StateName where

newtype StateName = StateName Int deriving (Eq,Ord)

instance Show StateName where
    showsPrec _ S_NULL = showString "S_NULL"
    showsPrec _ S_LIGHTDONE = showString "S_LIGHTDONE"
    showsPrec _ S_PUNCH = showString "S_PUNCH"
    showsPrec _ S_PUNCHDOWN = showString "S_PUNCHDOWN"
    showsPrec _ S_PUNCHUP = showString "S_PUNCHUP"
    showsPrec _ S_PUNCH1 = showString "S_PUNCH1"
    showsPrec _ S_PUNCH2 = showString "S_PUNCH2"
    showsPrec _ S_PUNCH3 = showString "S_PUNCH3"
    showsPrec _ S_PUNCH4 = showString "S_PUNCH4"
    showsPrec _ S_PUNCH5 = showString "S_PUNCH5"
    showsPrec _ S_PISTOL = showString "S_PISTOL"
    showsPrec _ S_PISTOLDOWN = showString "S_PISTOLDOWN"
    showsPrec _ S_PISTOLUP = showString "S_PISTOLUP"
    showsPrec _ S_PISTOL1 = showString "S_PISTOL1"
    showsPrec _ S_PISTOL2 = showString "S_PISTOL2"
    showsPrec _ S_PISTOL3 = showString "S_PISTOL3"
    showsPrec _ S_PISTOL4 = showString "S_PISTOL4"
    showsPrec _ S_PISTOLFLASH = showString "S_PISTOLFLASH"
    showsPrec _ S_SGUN = showString "S_SGUN"
    showsPrec _ S_SGUNDOWN = showString "S_SGUNDOWN"
    showsPrec _ S_SGUNUP = showString "S_SGUNUP"
    showsPrec _ S_SGUN1 = showString "S_SGUN1"
    showsPrec _ S_SGUN2 = showString "S_SGUN2"
    showsPrec _ S_SGUN3 = showString "S_SGUN3"
    showsPrec _ S_SGUN4 = showString "S_SGUN4"
    showsPrec _ S_SGUN5 = showString "S_SGUN5"
    showsPrec _ S_SGUN6 = showString "S_SGUN6"
    showsPrec _ S_SGUN7 = showString "S_SGUN7"
    showsPrec _ S_SGUN8 = showString "S_SGUN8"
    showsPrec _ S_SGUN9 = showString "S_SGUN9"
    showsPrec _ S_SGUNFLASH1 = showString "S_SGUNFLASH1"
    showsPrec _ S_SGUNFLASH2 = showString "S_SGUNFLASH2"
    showsPrec _ S_DSGUN = showString "S_DSGUN"
    showsPrec _ S_DSGUNDOWN = showString "S_DSGUNDOWN"
    showsPrec _ S_DSGUNUP = showString "S_DSGUNUP"
    showsPrec _ S_DSGUN1 = showString "S_DSGUN1"
    showsPrec _ S_DSGUN2 = showString "S_DSGUN2"
    showsPrec _ S_DSGUN3 = showString "S_DSGUN3"
    showsPrec _ S_DSGUN4 = showString "S_DSGUN4"
    showsPrec _ S_DSGUN5 = showString "S_DSGUN5"
    showsPrec _ S_DSGUN6 = showString "S_DSGUN6"
    showsPrec _ S_DSGUN7 = showString "S_DSGUN7"
    showsPrec _ S_DSGUN8 = showString "S_DSGUN8"
    showsPrec _ S_DSGUN9 = showString "S_DSGUN9"
    showsPrec _ S_DSGUN10 = showString "S_DSGUN10"
    showsPrec _ S_DSNR1 = showString "S_DSNR1"
    showsPrec _ S_DSNR2 = showString "S_DSNR2"
    showsPrec _ S_DSGUNFLASH1 = showString "S_DSGUNFLASH1"
    showsPrec _ S_DSGUNFLASH2 = showString "S_DSGUNFLASH2"
    showsPrec _ S_CHAIN = showString "S_CHAIN"
    showsPrec _ S_CHAINDOWN = showString "S_CHAINDOWN"
    showsPrec _ S_CHAINUP = showString "S_CHAINUP"
    showsPrec _ S_CHAIN1 = showString "S_CHAIN1"
    showsPrec _ S_CHAIN2 = showString "S_CHAIN2"
    showsPrec _ S_CHAIN3 = showString "S_CHAIN3"
    showsPrec _ S_CHAINFLASH1 = showString "S_CHAINFLASH1"
    showsPrec _ S_CHAINFLASH2 = showString "S_CHAINFLASH2"
    showsPrec _ S_MISSILE = showString "S_MISSILE"
    showsPrec _ S_MISSILEDOWN = showString "S_MISSILEDOWN"
    showsPrec _ S_MISSILEUP = showString "S_MISSILEUP"
    showsPrec _ S_MISSILE1 = showString "S_MISSILE1"
    showsPrec _ S_MISSILE2 = showString "S_MISSILE2"
    showsPrec _ S_MISSILE3 = showString "S_MISSILE3"
    showsPrec _ S_MISSILEFLASH1 = showString "S_MISSILEFLASH1"
    showsPrec _ S_MISSILEFLASH2 = showString "S_MISSILEFLASH2"
    showsPrec _ S_MISSILEFLASH3 = showString "S_MISSILEFLASH3"
    showsPrec _ S_MISSILEFLASH4 = showString "S_MISSILEFLASH4"
    showsPrec _ S_SAW = showString "S_SAW"
    showsPrec _ S_SAWB = showString "S_SAWB"
    showsPrec _ S_SAWDOWN = showString "S_SAWDOWN"
    showsPrec _ S_SAWUP = showString "S_SAWUP"
    showsPrec _ S_SAW1 = showString "S_SAW1"
    showsPrec _ S_SAW2 = showString "S_SAW2"
    showsPrec _ S_SAW3 = showString "S_SAW3"
    showsPrec _ S_PLASMA = showString "S_PLASMA"
    showsPrec _ S_PLASMADOWN = showString "S_PLASMADOWN"
    showsPrec _ S_PLASMAUP = showString "S_PLASMAUP"
    showsPrec _ S_PLASMA1 = showString "S_PLASMA1"
    showsPrec _ S_PLASMA2 = showString "S_PLASMA2"
    showsPrec _ S_PLASMAFLASH1 = showString "S_PLASMAFLASH1"
    showsPrec _ S_PLASMAFLASH2 = showString "S_PLASMAFLASH2"
    showsPrec _ S_BFG = showString "S_BFG"
    showsPrec _ S_BFGDOWN = showString "S_BFGDOWN"
    showsPrec _ S_BFGUP = showString "S_BFGUP"
    showsPrec _ S_BFG1 = showString "S_BFG1"
    showsPrec _ S_BFG2 = showString "S_BFG2"
    showsPrec _ S_BFG3 = showString "S_BFG3"
    showsPrec _ S_BFG4 = showString "S_BFG4"
    showsPrec _ S_BFGFLASH1 = showString "S_BFGFLASH1"
    showsPrec _ S_BFGFLASH2 = showString "S_BFGFLASH2"
    showsPrec _ S_BLOOD1 = showString "S_BLOOD1"
    showsPrec _ S_BLOOD2 = showString "S_BLOOD2"
    showsPrec _ S_BLOOD3 = showString "S_BLOOD3"
    showsPrec _ S_PUFF1 = showString "S_PUFF1"
    showsPrec _ S_PUFF2 = showString "S_PUFF2"
    showsPrec _ S_PUFF3 = showString "S_PUFF3"
    showsPrec _ S_PUFF4 = showString "S_PUFF4"
    showsPrec _ S_TBALL1 = showString "S_TBALL1"
    showsPrec _ S_TBALL2 = showString "S_TBALL2"
    showsPrec _ S_TBALLX1 = showString "S_TBALLX1"
    showsPrec _ S_TBALLX2 = showString "S_TBALLX2"
    showsPrec _ S_TBALLX3 = showString "S_TBALLX3"
    showsPrec _ S_RBALL1 = showString "S_RBALL1"
    showsPrec _ S_RBALL2 = showString "S_RBALL2"
    showsPrec _ S_RBALLX1 = showString "S_RBALLX1"
    showsPrec _ S_RBALLX2 = showString "S_RBALLX2"
    showsPrec _ S_RBALLX3 = showString "S_RBALLX3"
    showsPrec _ S_PLASBALL = showString "S_PLASBALL"
    showsPrec _ S_PLASBALL2 = showString "S_PLASBALL2"
    showsPrec _ S_PLASEXP = showString "S_PLASEXP"
    showsPrec _ S_PLASEXP2 = showString "S_PLASEXP2"
    showsPrec _ S_PLASEXP3 = showString "S_PLASEXP3"
    showsPrec _ S_PLASEXP4 = showString "S_PLASEXP4"
    showsPrec _ S_PLASEXP5 = showString "S_PLASEXP5"
    showsPrec _ S_ROCKET = showString "S_ROCKET"
    showsPrec _ S_BFGSHOT = showString "S_BFGSHOT"
    showsPrec _ S_BFGSHOT2 = showString "S_BFGSHOT2"
    showsPrec _ S_BFGLAND = showString "S_BFGLAND"
    showsPrec _ S_BFGLAND2 = showString "S_BFGLAND2"
    showsPrec _ S_BFGLAND3 = showString "S_BFGLAND3"
    showsPrec _ S_BFGLAND4 = showString "S_BFGLAND4"
    showsPrec _ S_BFGLAND5 = showString "S_BFGLAND5"
    showsPrec _ S_BFGLAND6 = showString "S_BFGLAND6"
    showsPrec _ S_BFGEXP = showString "S_BFGEXP"
    showsPrec _ S_BFGEXP2 = showString "S_BFGEXP2"
    showsPrec _ S_BFGEXP3 = showString "S_BFGEXP3"
    showsPrec _ S_BFGEXP4 = showString "S_BFGEXP4"
    showsPrec _ S_EXPLODE1 = showString "S_EXPLODE1"
    showsPrec _ S_EXPLODE2 = showString "S_EXPLODE2"
    showsPrec _ S_EXPLODE3 = showString "S_EXPLODE3"
    showsPrec _ S_TFOG = showString "S_TFOG"
    showsPrec _ S_TFOG01 = showString "S_TFOG01"
    showsPrec _ S_TFOG02 = showString "S_TFOG02"
    showsPrec _ S_TFOG2 = showString "S_TFOG2"
    showsPrec _ S_TFOG3 = showString "S_TFOG3"
    showsPrec _ S_TFOG4 = showString "S_TFOG4"
    showsPrec _ S_TFOG5 = showString "S_TFOG5"
    showsPrec _ S_TFOG6 = showString "S_TFOG6"
    showsPrec _ S_TFOG7 = showString "S_TFOG7"
    showsPrec _ S_TFOG8 = showString "S_TFOG8"
    showsPrec _ S_TFOG9 = showString "S_TFOG9"
    showsPrec _ S_TFOG10 = showString "S_TFOG10"
    showsPrec _ S_IFOG = showString "S_IFOG"
    showsPrec _ S_IFOG01 = showString "S_IFOG01"
    showsPrec _ S_IFOG02 = showString "S_IFOG02"
    showsPrec _ S_IFOG2 = showString "S_IFOG2"
    showsPrec _ S_IFOG3 = showString "S_IFOG3"
    showsPrec _ S_IFOG4 = showString "S_IFOG4"
    showsPrec _ S_IFOG5 = showString "S_IFOG5"
    showsPrec _ S_PLAY = showString "S_PLAY"
    showsPrec _ S_PLAY_RUN1 = showString "S_PLAY_RUN1"
    showsPrec _ S_PLAY_RUN2 = showString "S_PLAY_RUN2"
    showsPrec _ S_PLAY_RUN3 = showString "S_PLAY_RUN3"
    showsPrec _ S_PLAY_RUN4 = showString "S_PLAY_RUN4"
    showsPrec _ S_PLAY_ATK1 = showString "S_PLAY_ATK1"
    showsPrec _ S_PLAY_ATK2 = showString "S_PLAY_ATK2"
    showsPrec _ S_PLAY_PAIN = showString "S_PLAY_PAIN"
    showsPrec _ S_PLAY_PAIN2 = showString "S_PLAY_PAIN2"
    showsPrec _ S_PLAY_DIE1 = showString "S_PLAY_DIE1"
    showsPrec _ S_PLAY_DIE2 = showString "S_PLAY_DIE2"
    showsPrec _ S_PLAY_DIE3 = showString "S_PLAY_DIE3"
    showsPrec _ S_PLAY_DIE4 = showString "S_PLAY_DIE4"
    showsPrec _ S_PLAY_DIE5 = showString "S_PLAY_DIE5"
    showsPrec _ S_PLAY_DIE6 = showString "S_PLAY_DIE6"
    showsPrec _ S_PLAY_DIE7 = showString "S_PLAY_DIE7"
    showsPrec _ S_PLAY_XDIE1 = showString "S_PLAY_XDIE1"
    showsPrec _ S_PLAY_XDIE2 = showString "S_PLAY_XDIE2"
    showsPrec _ S_PLAY_XDIE3 = showString "S_PLAY_XDIE3"
    showsPrec _ S_PLAY_XDIE4 = showString "S_PLAY_XDIE4"
    showsPrec _ S_PLAY_XDIE5 = showString "S_PLAY_XDIE5"
    showsPrec _ S_PLAY_XDIE6 = showString "S_PLAY_XDIE6"
    showsPrec _ S_PLAY_XDIE7 = showString "S_PLAY_XDIE7"
    showsPrec _ S_PLAY_XDIE8 = showString "S_PLAY_XDIE8"
    showsPrec _ S_PLAY_XDIE9 = showString "S_PLAY_XDIE9"
    showsPrec _ S_POSS_STND = showString "S_POSS_STND"
    showsPrec _ S_POSS_STND2 = showString "S_POSS_STND2"
    showsPrec _ S_POSS_RUN1 = showString "S_POSS_RUN1"
    showsPrec _ S_POSS_RUN2 = showString "S_POSS_RUN2"
    showsPrec _ S_POSS_RUN3 = showString "S_POSS_RUN3"
    showsPrec _ S_POSS_RUN4 = showString "S_POSS_RUN4"
    showsPrec _ S_POSS_RUN5 = showString "S_POSS_RUN5"
    showsPrec _ S_POSS_RUN6 = showString "S_POSS_RUN6"
    showsPrec _ S_POSS_RUN7 = showString "S_POSS_RUN7"
    showsPrec _ S_POSS_RUN8 = showString "S_POSS_RUN8"
    showsPrec _ S_POSS_ATK1 = showString "S_POSS_ATK1"
    showsPrec _ S_POSS_ATK2 = showString "S_POSS_ATK2"
    showsPrec _ S_POSS_ATK3 = showString "S_POSS_ATK3"
    showsPrec _ S_POSS_PAIN = showString "S_POSS_PAIN"
    showsPrec _ S_POSS_PAIN2 = showString "S_POSS_PAIN2"
    showsPrec _ S_POSS_DIE1 = showString "S_POSS_DIE1"
    showsPrec _ S_POSS_DIE2 = showString "S_POSS_DIE2"
    showsPrec _ S_POSS_DIE3 = showString "S_POSS_DIE3"
    showsPrec _ S_POSS_DIE4 = showString "S_POSS_DIE4"
    showsPrec _ S_POSS_DIE5 = showString "S_POSS_DIE5"
    showsPrec _ S_POSS_XDIE1 = showString "S_POSS_XDIE1"
    showsPrec _ S_POSS_XDIE2 = showString "S_POSS_XDIE2"
    showsPrec _ S_POSS_XDIE3 = showString "S_POSS_XDIE3"
    showsPrec _ S_POSS_XDIE4 = showString "S_POSS_XDIE4"
    showsPrec _ S_POSS_XDIE5 = showString "S_POSS_XDIE5"
    showsPrec _ S_POSS_XDIE6 = showString "S_POSS_XDIE6"
    showsPrec _ S_POSS_XDIE7 = showString "S_POSS_XDIE7"
    showsPrec _ S_POSS_XDIE8 = showString "S_POSS_XDIE8"
    showsPrec _ S_POSS_XDIE9 = showString "S_POSS_XDIE9"
    showsPrec _ S_POSS_RAISE1 = showString "S_POSS_RAISE1"
    showsPrec _ S_POSS_RAISE2 = showString "S_POSS_RAISE2"
    showsPrec _ S_POSS_RAISE3 = showString "S_POSS_RAISE3"
    showsPrec _ S_POSS_RAISE4 = showString "S_POSS_RAISE4"
    showsPrec _ S_SPOS_STND = showString "S_SPOS_STND"
    showsPrec _ S_SPOS_STND2 = showString "S_SPOS_STND2"
    showsPrec _ S_SPOS_RUN1 = showString "S_SPOS_RUN1"
    showsPrec _ S_SPOS_RUN2 = showString "S_SPOS_RUN2"
    showsPrec _ S_SPOS_RUN3 = showString "S_SPOS_RUN3"
    showsPrec _ S_SPOS_RUN4 = showString "S_SPOS_RUN4"
    showsPrec _ S_SPOS_RUN5 = showString "S_SPOS_RUN5"
    showsPrec _ S_SPOS_RUN6 = showString "S_SPOS_RUN6"
    showsPrec _ S_SPOS_RUN7 = showString "S_SPOS_RUN7"
    showsPrec _ S_SPOS_RUN8 = showString "S_SPOS_RUN8"
    showsPrec _ S_SPOS_ATK1 = showString "S_SPOS_ATK1"
    showsPrec _ S_SPOS_ATK2 = showString "S_SPOS_ATK2"
    showsPrec _ S_SPOS_ATK3 = showString "S_SPOS_ATK3"
    showsPrec _ S_SPOS_PAIN = showString "S_SPOS_PAIN"
    showsPrec _ S_SPOS_PAIN2 = showString "S_SPOS_PAIN2"
    showsPrec _ S_SPOS_DIE1 = showString "S_SPOS_DIE1"
    showsPrec _ S_SPOS_DIE2 = showString "S_SPOS_DIE2"
    showsPrec _ S_SPOS_DIE3 = showString "S_SPOS_DIE3"
    showsPrec _ S_SPOS_DIE4 = showString "S_SPOS_DIE4"
    showsPrec _ S_SPOS_DIE5 = showString "S_SPOS_DIE5"
    showsPrec _ S_SPOS_XDIE1 = showString "S_SPOS_XDIE1"
    showsPrec _ S_SPOS_XDIE2 = showString "S_SPOS_XDIE2"
    showsPrec _ S_SPOS_XDIE3 = showString "S_SPOS_XDIE3"
    showsPrec _ S_SPOS_XDIE4 = showString "S_SPOS_XDIE4"
    showsPrec _ S_SPOS_XDIE5 = showString "S_SPOS_XDIE5"
    showsPrec _ S_SPOS_XDIE6 = showString "S_SPOS_XDIE6"
    showsPrec _ S_SPOS_XDIE7 = showString "S_SPOS_XDIE7"
    showsPrec _ S_SPOS_XDIE8 = showString "S_SPOS_XDIE8"
    showsPrec _ S_SPOS_XDIE9 = showString "S_SPOS_XDIE9"
    showsPrec _ S_SPOS_RAISE1 = showString "S_SPOS_RAISE1"
    showsPrec _ S_SPOS_RAISE2 = showString "S_SPOS_RAISE2"
    showsPrec _ S_SPOS_RAISE3 = showString "S_SPOS_RAISE3"
    showsPrec _ S_SPOS_RAISE4 = showString "S_SPOS_RAISE4"
    showsPrec _ S_SPOS_RAISE5 = showString "S_SPOS_RAISE5"
    showsPrec _ S_VILE_STND = showString "S_VILE_STND"
    showsPrec _ S_VILE_STND2 = showString "S_VILE_STND2"
    showsPrec _ S_VILE_RUN1 = showString "S_VILE_RUN1"
    showsPrec _ S_VILE_RUN2 = showString "S_VILE_RUN2"
    showsPrec _ S_VILE_RUN3 = showString "S_VILE_RUN3"
    showsPrec _ S_VILE_RUN4 = showString "S_VILE_RUN4"
    showsPrec _ S_VILE_RUN5 = showString "S_VILE_RUN5"
    showsPrec _ S_VILE_RUN6 = showString "S_VILE_RUN6"
    showsPrec _ S_VILE_RUN7 = showString "S_VILE_RUN7"
    showsPrec _ S_VILE_RUN8 = showString "S_VILE_RUN8"
    showsPrec _ S_VILE_RUN9 = showString "S_VILE_RUN9"
    showsPrec _ S_VILE_RUN10 = showString "S_VILE_RUN10"
    showsPrec _ S_VILE_RUN11 = showString "S_VILE_RUN11"
    showsPrec _ S_VILE_RUN12 = showString "S_VILE_RUN12"
    showsPrec _ S_VILE_ATK1 = showString "S_VILE_ATK1"
    showsPrec _ S_VILE_ATK2 = showString "S_VILE_ATK2"
    showsPrec _ S_VILE_ATK3 = showString "S_VILE_ATK3"
    showsPrec _ S_VILE_ATK4 = showString "S_VILE_ATK4"
    showsPrec _ S_VILE_ATK5 = showString "S_VILE_ATK5"
    showsPrec _ S_VILE_ATK6 = showString "S_VILE_ATK6"
    showsPrec _ S_VILE_ATK7 = showString "S_VILE_ATK7"
    showsPrec _ S_VILE_ATK8 = showString "S_VILE_ATK8"
    showsPrec _ S_VILE_ATK9 = showString "S_VILE_ATK9"
    showsPrec _ S_VILE_ATK10 = showString "S_VILE_ATK10"
    showsPrec _ S_VILE_ATK11 = showString "S_VILE_ATK11"
    showsPrec _ S_VILE_HEAL1 = showString "S_VILE_HEAL1"
    showsPrec _ S_VILE_HEAL2 = showString "S_VILE_HEAL2"
    showsPrec _ S_VILE_HEAL3 = showString "S_VILE_HEAL3"
    showsPrec _ S_VILE_PAIN = showString "S_VILE_PAIN"
    showsPrec _ S_VILE_PAIN2 = showString "S_VILE_PAIN2"
    showsPrec _ S_VILE_DIE1 = showString "S_VILE_DIE1"
    showsPrec _ S_VILE_DIE2 = showString "S_VILE_DIE2"
    showsPrec _ S_VILE_DIE3 = showString "S_VILE_DIE3"
    showsPrec _ S_VILE_DIE4 = showString "S_VILE_DIE4"
    showsPrec _ S_VILE_DIE5 = showString "S_VILE_DIE5"
    showsPrec _ S_VILE_DIE6 = showString "S_VILE_DIE6"
    showsPrec _ S_VILE_DIE7 = showString "S_VILE_DIE7"
    showsPrec _ S_VILE_DIE8 = showString "S_VILE_DIE8"
    showsPrec _ S_VILE_DIE9 = showString "S_VILE_DIE9"
    showsPrec _ S_VILE_DIE10 = showString "S_VILE_DIE10"
    showsPrec _ S_FIRE1 = showString "S_FIRE1"
    showsPrec _ S_FIRE2 = showString "S_FIRE2"
    showsPrec _ S_FIRE3 = showString "S_FIRE3"
    showsPrec _ S_FIRE4 = showString "S_FIRE4"
    showsPrec _ S_FIRE5 = showString "S_FIRE5"
    showsPrec _ S_FIRE6 = showString "S_FIRE6"
    showsPrec _ S_FIRE7 = showString "S_FIRE7"
    showsPrec _ S_FIRE8 = showString "S_FIRE8"
    showsPrec _ S_FIRE9 = showString "S_FIRE9"
    showsPrec _ S_FIRE10 = showString "S_FIRE10"
    showsPrec _ S_FIRE11 = showString "S_FIRE11"
    showsPrec _ S_FIRE12 = showString "S_FIRE12"
    showsPrec _ S_FIRE13 = showString "S_FIRE13"
    showsPrec _ S_FIRE14 = showString "S_FIRE14"
    showsPrec _ S_FIRE15 = showString "S_FIRE15"
    showsPrec _ S_FIRE16 = showString "S_FIRE16"
    showsPrec _ S_FIRE17 = showString "S_FIRE17"
    showsPrec _ S_FIRE18 = showString "S_FIRE18"
    showsPrec _ S_FIRE19 = showString "S_FIRE19"
    showsPrec _ S_FIRE20 = showString "S_FIRE20"
    showsPrec _ S_FIRE21 = showString "S_FIRE21"
    showsPrec _ S_FIRE22 = showString "S_FIRE22"
    showsPrec _ S_FIRE23 = showString "S_FIRE23"
    showsPrec _ S_FIRE24 = showString "S_FIRE24"
    showsPrec _ S_FIRE25 = showString "S_FIRE25"
    showsPrec _ S_FIRE26 = showString "S_FIRE26"
    showsPrec _ S_FIRE27 = showString "S_FIRE27"
    showsPrec _ S_FIRE28 = showString "S_FIRE28"
    showsPrec _ S_FIRE29 = showString "S_FIRE29"
    showsPrec _ S_FIRE30 = showString "S_FIRE30"
    showsPrec _ S_SMOKE1 = showString "S_SMOKE1"
    showsPrec _ S_SMOKE2 = showString "S_SMOKE2"
    showsPrec _ S_SMOKE3 = showString "S_SMOKE3"
    showsPrec _ S_SMOKE4 = showString "S_SMOKE4"
    showsPrec _ S_SMOKE5 = showString "S_SMOKE5"
    showsPrec _ S_TRACER = showString "S_TRACER"
    showsPrec _ S_TRACER2 = showString "S_TRACER2"
    showsPrec _ S_TRACEEXP1 = showString "S_TRACEEXP1"
    showsPrec _ S_TRACEEXP2 = showString "S_TRACEEXP2"
    showsPrec _ S_TRACEEXP3 = showString "S_TRACEEXP3"
    showsPrec _ S_SKEL_STND = showString "S_SKEL_STND"
    showsPrec _ S_SKEL_STND2 = showString "S_SKEL_STND2"
    showsPrec _ S_SKEL_RUN1 = showString "S_SKEL_RUN1"
    showsPrec _ S_SKEL_RUN2 = showString "S_SKEL_RUN2"
    showsPrec _ S_SKEL_RUN3 = showString "S_SKEL_RUN3"
    showsPrec _ S_SKEL_RUN4 = showString "S_SKEL_RUN4"
    showsPrec _ S_SKEL_RUN5 = showString "S_SKEL_RUN5"
    showsPrec _ S_SKEL_RUN6 = showString "S_SKEL_RUN6"
    showsPrec _ S_SKEL_RUN7 = showString "S_SKEL_RUN7"
    showsPrec _ S_SKEL_RUN8 = showString "S_SKEL_RUN8"
    showsPrec _ S_SKEL_RUN9 = showString "S_SKEL_RUN9"
    showsPrec _ S_SKEL_RUN10 = showString "S_SKEL_RUN10"
    showsPrec _ S_SKEL_RUN11 = showString "S_SKEL_RUN11"
    showsPrec _ S_SKEL_RUN12 = showString "S_SKEL_RUN12"
    showsPrec _ S_SKEL_FIST1 = showString "S_SKEL_FIST1"
    showsPrec _ S_SKEL_FIST2 = showString "S_SKEL_FIST2"
    showsPrec _ S_SKEL_FIST3 = showString "S_SKEL_FIST3"
    showsPrec _ S_SKEL_FIST4 = showString "S_SKEL_FIST4"
    showsPrec _ S_SKEL_MISS1 = showString "S_SKEL_MISS1"
    showsPrec _ S_SKEL_MISS2 = showString "S_SKEL_MISS2"
    showsPrec _ S_SKEL_MISS3 = showString "S_SKEL_MISS3"
    showsPrec _ S_SKEL_MISS4 = showString "S_SKEL_MISS4"
    showsPrec _ S_SKEL_PAIN = showString "S_SKEL_PAIN"
    showsPrec _ S_SKEL_PAIN2 = showString "S_SKEL_PAIN2"
    showsPrec _ S_SKEL_DIE1 = showString "S_SKEL_DIE1"
    showsPrec _ S_SKEL_DIE2 = showString "S_SKEL_DIE2"
    showsPrec _ S_SKEL_DIE3 = showString "S_SKEL_DIE3"
    showsPrec _ S_SKEL_DIE4 = showString "S_SKEL_DIE4"
    showsPrec _ S_SKEL_DIE5 = showString "S_SKEL_DIE5"
    showsPrec _ S_SKEL_DIE6 = showString "S_SKEL_DIE6"
    showsPrec _ S_SKEL_RAISE1 = showString "S_SKEL_RAISE1"
    showsPrec _ S_SKEL_RAISE2 = showString "S_SKEL_RAISE2"
    showsPrec _ S_SKEL_RAISE3 = showString "S_SKEL_RAISE3"
    showsPrec _ S_SKEL_RAISE4 = showString "S_SKEL_RAISE4"
    showsPrec _ S_SKEL_RAISE5 = showString "S_SKEL_RAISE5"
    showsPrec _ S_SKEL_RAISE6 = showString "S_SKEL_RAISE6"
    showsPrec _ S_FATSHOT1 = showString "S_FATSHOT1"
    showsPrec _ S_FATSHOT2 = showString "S_FATSHOT2"
    showsPrec _ S_FATSHOTX1 = showString "S_FATSHOTX1"
    showsPrec _ S_FATSHOTX2 = showString "S_FATSHOTX2"
    showsPrec _ S_FATSHOTX3 = showString "S_FATSHOTX3"
    showsPrec _ S_FATT_STND = showString "S_FATT_STND"
    showsPrec _ S_FATT_STND2 = showString "S_FATT_STND2"
    showsPrec _ S_FATT_RUN1 = showString "S_FATT_RUN1"
    showsPrec _ S_FATT_RUN2 = showString "S_FATT_RUN2"
    showsPrec _ S_FATT_RUN3 = showString "S_FATT_RUN3"
    showsPrec _ S_FATT_RUN4 = showString "S_FATT_RUN4"
    showsPrec _ S_FATT_RUN5 = showString "S_FATT_RUN5"
    showsPrec _ S_FATT_RUN6 = showString "S_FATT_RUN6"
    showsPrec _ S_FATT_RUN7 = showString "S_FATT_RUN7"
    showsPrec _ S_FATT_RUN8 = showString "S_FATT_RUN8"
    showsPrec _ S_FATT_RUN9 = showString "S_FATT_RUN9"
    showsPrec _ S_FATT_RUN10 = showString "S_FATT_RUN10"
    showsPrec _ S_FATT_RUN11 = showString "S_FATT_RUN11"
    showsPrec _ S_FATT_RUN12 = showString "S_FATT_RUN12"
    showsPrec _ S_FATT_ATK1 = showString "S_FATT_ATK1"
    showsPrec _ S_FATT_ATK2 = showString "S_FATT_ATK2"
    showsPrec _ S_FATT_ATK3 = showString "S_FATT_ATK3"
    showsPrec _ S_FATT_ATK4 = showString "S_FATT_ATK4"
    showsPrec _ S_FATT_ATK5 = showString "S_FATT_ATK5"
    showsPrec _ S_FATT_ATK6 = showString "S_FATT_ATK6"
    showsPrec _ S_FATT_ATK7 = showString "S_FATT_ATK7"
    showsPrec _ S_FATT_ATK8 = showString "S_FATT_ATK8"
    showsPrec _ S_FATT_ATK9 = showString "S_FATT_ATK9"
    showsPrec _ S_FATT_ATK10 = showString "S_FATT_ATK10"
    showsPrec _ S_FATT_PAIN = showString "S_FATT_PAIN"
    showsPrec _ S_FATT_PAIN2 = showString "S_FATT_PAIN2"
    showsPrec _ S_FATT_DIE1 = showString "S_FATT_DIE1"
    showsPrec _ S_FATT_DIE2 = showString "S_FATT_DIE2"
    showsPrec _ S_FATT_DIE3 = showString "S_FATT_DIE3"
    showsPrec _ S_FATT_DIE4 = showString "S_FATT_DIE4"
    showsPrec _ S_FATT_DIE5 = showString "S_FATT_DIE5"
    showsPrec _ S_FATT_DIE6 = showString "S_FATT_DIE6"
    showsPrec _ S_FATT_DIE7 = showString "S_FATT_DIE7"
    showsPrec _ S_FATT_DIE8 = showString "S_FATT_DIE8"
    showsPrec _ S_FATT_DIE9 = showString "S_FATT_DIE9"
    showsPrec _ S_FATT_DIE10 = showString "S_FATT_DIE10"
    showsPrec _ S_FATT_RAISE1 = showString "S_FATT_RAISE1"
    showsPrec _ S_FATT_RAISE2 = showString "S_FATT_RAISE2"
    showsPrec _ S_FATT_RAISE3 = showString "S_FATT_RAISE3"
    showsPrec _ S_FATT_RAISE4 = showString "S_FATT_RAISE4"
    showsPrec _ S_FATT_RAISE5 = showString "S_FATT_RAISE5"
    showsPrec _ S_FATT_RAISE6 = showString "S_FATT_RAISE6"
    showsPrec _ S_FATT_RAISE7 = showString "S_FATT_RAISE7"
    showsPrec _ S_FATT_RAISE8 = showString "S_FATT_RAISE8"
    showsPrec _ S_CPOS_STND = showString "S_CPOS_STND"
    showsPrec _ S_CPOS_STND2 = showString "S_CPOS_STND2"
    showsPrec _ S_CPOS_RUN1 = showString "S_CPOS_RUN1"
    showsPrec _ S_CPOS_RUN2 = showString "S_CPOS_RUN2"
    showsPrec _ S_CPOS_RUN3 = showString "S_CPOS_RUN3"
    showsPrec _ S_CPOS_RUN4 = showString "S_CPOS_RUN4"
    showsPrec _ S_CPOS_RUN5 = showString "S_CPOS_RUN5"
    showsPrec _ S_CPOS_RUN6 = showString "S_CPOS_RUN6"
    showsPrec _ S_CPOS_RUN7 = showString "S_CPOS_RUN7"
    showsPrec _ S_CPOS_RUN8 = showString "S_CPOS_RUN8"
    showsPrec _ S_CPOS_ATK1 = showString "S_CPOS_ATK1"
    showsPrec _ S_CPOS_ATK2 = showString "S_CPOS_ATK2"
    showsPrec _ S_CPOS_ATK3 = showString "S_CPOS_ATK3"
    showsPrec _ S_CPOS_ATK4 = showString "S_CPOS_ATK4"
    showsPrec _ S_CPOS_PAIN = showString "S_CPOS_PAIN"
    showsPrec _ S_CPOS_PAIN2 = showString "S_CPOS_PAIN2"
    showsPrec _ S_CPOS_DIE1 = showString "S_CPOS_DIE1"
    showsPrec _ S_CPOS_DIE2 = showString "S_CPOS_DIE2"
    showsPrec _ S_CPOS_DIE3 = showString "S_CPOS_DIE3"
    showsPrec _ S_CPOS_DIE4 = showString "S_CPOS_DIE4"
    showsPrec _ S_CPOS_DIE5 = showString "S_CPOS_DIE5"
    showsPrec _ S_CPOS_DIE6 = showString "S_CPOS_DIE6"
    showsPrec _ S_CPOS_DIE7 = showString "S_CPOS_DIE7"
    showsPrec _ S_CPOS_XDIE1 = showString "S_CPOS_XDIE1"
    showsPrec _ S_CPOS_XDIE2 = showString "S_CPOS_XDIE2"
    showsPrec _ S_CPOS_XDIE3 = showString "S_CPOS_XDIE3"
    showsPrec _ S_CPOS_XDIE4 = showString "S_CPOS_XDIE4"
    showsPrec _ S_CPOS_XDIE5 = showString "S_CPOS_XDIE5"
    showsPrec _ S_CPOS_XDIE6 = showString "S_CPOS_XDIE6"
    showsPrec _ S_CPOS_RAISE1 = showString "S_CPOS_RAISE1"
    showsPrec _ S_CPOS_RAISE2 = showString "S_CPOS_RAISE2"
    showsPrec _ S_CPOS_RAISE3 = showString "S_CPOS_RAISE3"
    showsPrec _ S_CPOS_RAISE4 = showString "S_CPOS_RAISE4"
    showsPrec _ S_CPOS_RAISE5 = showString "S_CPOS_RAISE5"
    showsPrec _ S_CPOS_RAISE6 = showString "S_CPOS_RAISE6"
    showsPrec _ S_CPOS_RAISE7 = showString "S_CPOS_RAISE7"
    showsPrec _ S_TROO_STND = showString "S_TROO_STND"
    showsPrec _ S_TROO_STND2 = showString "S_TROO_STND2"
    showsPrec _ S_TROO_RUN1 = showString "S_TROO_RUN1"
    showsPrec _ S_TROO_RUN2 = showString "S_TROO_RUN2"
    showsPrec _ S_TROO_RUN3 = showString "S_TROO_RUN3"
    showsPrec _ S_TROO_RUN4 = showString "S_TROO_RUN4"
    showsPrec _ S_TROO_RUN5 = showString "S_TROO_RUN5"
    showsPrec _ S_TROO_RUN6 = showString "S_TROO_RUN6"
    showsPrec _ S_TROO_RUN7 = showString "S_TROO_RUN7"
    showsPrec _ S_TROO_RUN8 = showString "S_TROO_RUN8"
    showsPrec _ S_TROO_ATK1 = showString "S_TROO_ATK1"
    showsPrec _ S_TROO_ATK2 = showString "S_TROO_ATK2"
    showsPrec _ S_TROO_ATK3 = showString "S_TROO_ATK3"
    showsPrec _ S_TROO_PAIN = showString "S_TROO_PAIN"
    showsPrec _ S_TROO_PAIN2 = showString "S_TROO_PAIN2"
    showsPrec _ S_TROO_DIE1 = showString "S_TROO_DIE1"
    showsPrec _ S_TROO_DIE2 = showString "S_TROO_DIE2"
    showsPrec _ S_TROO_DIE3 = showString "S_TROO_DIE3"
    showsPrec _ S_TROO_DIE4 = showString "S_TROO_DIE4"
    showsPrec _ S_TROO_DIE5 = showString "S_TROO_DIE5"
    showsPrec _ S_TROO_XDIE1 = showString "S_TROO_XDIE1"
    showsPrec _ S_TROO_XDIE2 = showString "S_TROO_XDIE2"
    showsPrec _ S_TROO_XDIE3 = showString "S_TROO_XDIE3"
    showsPrec _ S_TROO_XDIE4 = showString "S_TROO_XDIE4"
    showsPrec _ S_TROO_XDIE5 = showString "S_TROO_XDIE5"
    showsPrec _ S_TROO_XDIE6 = showString "S_TROO_XDIE6"
    showsPrec _ S_TROO_XDIE7 = showString "S_TROO_XDIE7"
    showsPrec _ S_TROO_XDIE8 = showString "S_TROO_XDIE8"
    showsPrec _ S_TROO_RAISE1 = showString "S_TROO_RAISE1"
    showsPrec _ S_TROO_RAISE2 = showString "S_TROO_RAISE2"
    showsPrec _ S_TROO_RAISE3 = showString "S_TROO_RAISE3"
    showsPrec _ S_TROO_RAISE4 = showString "S_TROO_RAISE4"
    showsPrec _ S_TROO_RAISE5 = showString "S_TROO_RAISE5"
    showsPrec _ S_SARG_STND = showString "S_SARG_STND"
    showsPrec _ S_SARG_STND2 = showString "S_SARG_STND2"
    showsPrec _ S_SARG_RUN1 = showString "S_SARG_RUN1"
    showsPrec _ S_SARG_RUN2 = showString "S_SARG_RUN2"
    showsPrec _ S_SARG_RUN3 = showString "S_SARG_RUN3"
    showsPrec _ S_SARG_RUN4 = showString "S_SARG_RUN4"
    showsPrec _ S_SARG_RUN5 = showString "S_SARG_RUN5"
    showsPrec _ S_SARG_RUN6 = showString "S_SARG_RUN6"
    showsPrec _ S_SARG_RUN7 = showString "S_SARG_RUN7"
    showsPrec _ S_SARG_RUN8 = showString "S_SARG_RUN8"
    showsPrec _ S_SARG_ATK1 = showString "S_SARG_ATK1"
    showsPrec _ S_SARG_ATK2 = showString "S_SARG_ATK2"
    showsPrec _ S_SARG_ATK3 = showString "S_SARG_ATK3"
    showsPrec _ S_SARG_PAIN = showString "S_SARG_PAIN"
    showsPrec _ S_SARG_PAIN2 = showString "S_SARG_PAIN2"
    showsPrec _ S_SARG_DIE1 = showString "S_SARG_DIE1"
    showsPrec _ S_SARG_DIE2 = showString "S_SARG_DIE2"
    showsPrec _ S_SARG_DIE3 = showString "S_SARG_DIE3"
    showsPrec _ S_SARG_DIE4 = showString "S_SARG_DIE4"
    showsPrec _ S_SARG_DIE5 = showString "S_SARG_DIE5"
    showsPrec _ S_SARG_DIE6 = showString "S_SARG_DIE6"
    showsPrec _ S_SARG_RAISE1 = showString "S_SARG_RAISE1"
    showsPrec _ S_SARG_RAISE2 = showString "S_SARG_RAISE2"
    showsPrec _ S_SARG_RAISE3 = showString "S_SARG_RAISE3"
    showsPrec _ S_SARG_RAISE4 = showString "S_SARG_RAISE4"
    showsPrec _ S_SARG_RAISE5 = showString "S_SARG_RAISE5"
    showsPrec _ S_SARG_RAISE6 = showString "S_SARG_RAISE6"
    showsPrec _ S_HEAD_STND = showString "S_HEAD_STND"
    showsPrec _ S_HEAD_RUN1 = showString "S_HEAD_RUN1"
    showsPrec _ S_HEAD_ATK1 = showString "S_HEAD_ATK1"
    showsPrec _ S_HEAD_ATK2 = showString "S_HEAD_ATK2"
    showsPrec _ S_HEAD_ATK3 = showString "S_HEAD_ATK3"
    showsPrec _ S_HEAD_PAIN = showString "S_HEAD_PAIN"
    showsPrec _ S_HEAD_PAIN2 = showString "S_HEAD_PAIN2"
    showsPrec _ S_HEAD_PAIN3 = showString "S_HEAD_PAIN3"
    showsPrec _ S_HEAD_DIE1 = showString "S_HEAD_DIE1"
    showsPrec _ S_HEAD_DIE2 = showString "S_HEAD_DIE2"
    showsPrec _ S_HEAD_DIE3 = showString "S_HEAD_DIE3"
    showsPrec _ S_HEAD_DIE4 = showString "S_HEAD_DIE4"
    showsPrec _ S_HEAD_DIE5 = showString "S_HEAD_DIE5"
    showsPrec _ S_HEAD_DIE6 = showString "S_HEAD_DIE6"
    showsPrec _ S_HEAD_RAISE1 = showString "S_HEAD_RAISE1"
    showsPrec _ S_HEAD_RAISE2 = showString "S_HEAD_RAISE2"
    showsPrec _ S_HEAD_RAISE3 = showString "S_HEAD_RAISE3"
    showsPrec _ S_HEAD_RAISE4 = showString "S_HEAD_RAISE4"
    showsPrec _ S_HEAD_RAISE5 = showString "S_HEAD_RAISE5"
    showsPrec _ S_HEAD_RAISE6 = showString "S_HEAD_RAISE6"
    showsPrec _ S_BRBALL1 = showString "S_BRBALL1"
    showsPrec _ S_BRBALL2 = showString "S_BRBALL2"
    showsPrec _ S_BRBALLX1 = showString "S_BRBALLX1"
    showsPrec _ S_BRBALLX2 = showString "S_BRBALLX2"
    showsPrec _ S_BRBALLX3 = showString "S_BRBALLX3"
    showsPrec _ S_BOSS_STND = showString "S_BOSS_STND"
    showsPrec _ S_BOSS_STND2 = showString "S_BOSS_STND2"
    showsPrec _ S_BOSS_RUN1 = showString "S_BOSS_RUN1"
    showsPrec _ S_BOSS_RUN2 = showString "S_BOSS_RUN2"
    showsPrec _ S_BOSS_RUN3 = showString "S_BOSS_RUN3"
    showsPrec _ S_BOSS_RUN4 = showString "S_BOSS_RUN4"
    showsPrec _ S_BOSS_RUN5 = showString "S_BOSS_RUN5"
    showsPrec _ S_BOSS_RUN6 = showString "S_BOSS_RUN6"
    showsPrec _ S_BOSS_RUN7 = showString "S_BOSS_RUN7"
    showsPrec _ S_BOSS_RUN8 = showString "S_BOSS_RUN8"
    showsPrec _ S_BOSS_ATK1 = showString "S_BOSS_ATK1"
    showsPrec _ S_BOSS_ATK2 = showString "S_BOSS_ATK2"
    showsPrec _ S_BOSS_ATK3 = showString "S_BOSS_ATK3"
    showsPrec _ S_BOSS_PAIN = showString "S_BOSS_PAIN"
    showsPrec _ S_BOSS_PAIN2 = showString "S_BOSS_PAIN2"
    showsPrec _ S_BOSS_DIE1 = showString "S_BOSS_DIE1"
    showsPrec _ S_BOSS_DIE2 = showString "S_BOSS_DIE2"
    showsPrec _ S_BOSS_DIE3 = showString "S_BOSS_DIE3"
    showsPrec _ S_BOSS_DIE4 = showString "S_BOSS_DIE4"
    showsPrec _ S_BOSS_DIE5 = showString "S_BOSS_DIE5"
    showsPrec _ S_BOSS_DIE6 = showString "S_BOSS_DIE6"
    showsPrec _ S_BOSS_DIE7 = showString "S_BOSS_DIE7"
    showsPrec _ S_BOSS_RAISE1 = showString "S_BOSS_RAISE1"
    showsPrec _ S_BOSS_RAISE2 = showString "S_BOSS_RAISE2"
    showsPrec _ S_BOSS_RAISE3 = showString "S_BOSS_RAISE3"
    showsPrec _ S_BOSS_RAISE4 = showString "S_BOSS_RAISE4"
    showsPrec _ S_BOSS_RAISE5 = showString "S_BOSS_RAISE5"
    showsPrec _ S_BOSS_RAISE6 = showString "S_BOSS_RAISE6"
    showsPrec _ S_BOSS_RAISE7 = showString "S_BOSS_RAISE7"
    showsPrec _ S_BOS2_STND = showString "S_BOS2_STND"
    showsPrec _ S_BOS2_STND2 = showString "S_BOS2_STND2"
    showsPrec _ S_BOS2_RUN1 = showString "S_BOS2_RUN1"
    showsPrec _ S_BOS2_RUN2 = showString "S_BOS2_RUN2"
    showsPrec _ S_BOS2_RUN3 = showString "S_BOS2_RUN3"
    showsPrec _ S_BOS2_RUN4 = showString "S_BOS2_RUN4"
    showsPrec _ S_BOS2_RUN5 = showString "S_BOS2_RUN5"
    showsPrec _ S_BOS2_RUN6 = showString "S_BOS2_RUN6"
    showsPrec _ S_BOS2_RUN7 = showString "S_BOS2_RUN7"
    showsPrec _ S_BOS2_RUN8 = showString "S_BOS2_RUN8"
    showsPrec _ S_BOS2_ATK1 = showString "S_BOS2_ATK1"
    showsPrec _ S_BOS2_ATK2 = showString "S_BOS2_ATK2"
    showsPrec _ S_BOS2_ATK3 = showString "S_BOS2_ATK3"
    showsPrec _ S_BOS2_PAIN = showString "S_BOS2_PAIN"
    showsPrec _ S_BOS2_PAIN2 = showString "S_BOS2_PAIN2"
    showsPrec _ S_BOS2_DIE1 = showString "S_BOS2_DIE1"
    showsPrec _ S_BOS2_DIE2 = showString "S_BOS2_DIE2"
    showsPrec _ S_BOS2_DIE3 = showString "S_BOS2_DIE3"
    showsPrec _ S_BOS2_DIE4 = showString "S_BOS2_DIE4"
    showsPrec _ S_BOS2_DIE5 = showString "S_BOS2_DIE5"
    showsPrec _ S_BOS2_DIE6 = showString "S_BOS2_DIE6"
    showsPrec _ S_BOS2_DIE7 = showString "S_BOS2_DIE7"
    showsPrec _ S_BOS2_RAISE1 = showString "S_BOS2_RAISE1"
    showsPrec _ S_BOS2_RAISE2 = showString "S_BOS2_RAISE2"
    showsPrec _ S_BOS2_RAISE3 = showString "S_BOS2_RAISE3"
    showsPrec _ S_BOS2_RAISE4 = showString "S_BOS2_RAISE4"
    showsPrec _ S_BOS2_RAISE5 = showString "S_BOS2_RAISE5"
    showsPrec _ S_BOS2_RAISE6 = showString "S_BOS2_RAISE6"
    showsPrec _ S_BOS2_RAISE7 = showString "S_BOS2_RAISE7"
    showsPrec _ S_SKULL_STND = showString "S_SKULL_STND"
    showsPrec _ S_SKULL_STND2 = showString "S_SKULL_STND2"
    showsPrec _ S_SKULL_RUN1 = showString "S_SKULL_RUN1"
    showsPrec _ S_SKULL_RUN2 = showString "S_SKULL_RUN2"
    showsPrec _ S_SKULL_ATK1 = showString "S_SKULL_ATK1"
    showsPrec _ S_SKULL_ATK2 = showString "S_SKULL_ATK2"
    showsPrec _ S_SKULL_ATK3 = showString "S_SKULL_ATK3"
    showsPrec _ S_SKULL_ATK4 = showString "S_SKULL_ATK4"
    showsPrec _ S_SKULL_PAIN = showString "S_SKULL_PAIN"
    showsPrec _ S_SKULL_PAIN2 = showString "S_SKULL_PAIN2"
    showsPrec _ S_SKULL_DIE1 = showString "S_SKULL_DIE1"
    showsPrec _ S_SKULL_DIE2 = showString "S_SKULL_DIE2"
    showsPrec _ S_SKULL_DIE3 = showString "S_SKULL_DIE3"
    showsPrec _ S_SKULL_DIE4 = showString "S_SKULL_DIE4"
    showsPrec _ S_SKULL_DIE5 = showString "S_SKULL_DIE5"
    showsPrec _ S_SKULL_DIE6 = showString "S_SKULL_DIE6"
    showsPrec _ S_SPID_STND = showString "S_SPID_STND"
    showsPrec _ S_SPID_STND2 = showString "S_SPID_STND2"
    showsPrec _ S_SPID_RUN1 = showString "S_SPID_RUN1"
    showsPrec _ S_SPID_RUN2 = showString "S_SPID_RUN2"
    showsPrec _ S_SPID_RUN3 = showString "S_SPID_RUN3"
    showsPrec _ S_SPID_RUN4 = showString "S_SPID_RUN4"
    showsPrec _ S_SPID_RUN5 = showString "S_SPID_RUN5"
    showsPrec _ S_SPID_RUN6 = showString "S_SPID_RUN6"
    showsPrec _ S_SPID_RUN7 = showString "S_SPID_RUN7"
    showsPrec _ S_SPID_RUN8 = showString "S_SPID_RUN8"
    showsPrec _ S_SPID_RUN9 = showString "S_SPID_RUN9"
    showsPrec _ S_SPID_RUN10 = showString "S_SPID_RUN10"
    showsPrec _ S_SPID_RUN11 = showString "S_SPID_RUN11"
    showsPrec _ S_SPID_RUN12 = showString "S_SPID_RUN12"
    showsPrec _ S_SPID_ATK1 = showString "S_SPID_ATK1"
    showsPrec _ S_SPID_ATK2 = showString "S_SPID_ATK2"
    showsPrec _ S_SPID_ATK3 = showString "S_SPID_ATK3"
    showsPrec _ S_SPID_ATK4 = showString "S_SPID_ATK4"
    showsPrec _ S_SPID_PAIN = showString "S_SPID_PAIN"
    showsPrec _ S_SPID_PAIN2 = showString "S_SPID_PAIN2"
    showsPrec _ S_SPID_DIE1 = showString "S_SPID_DIE1"
    showsPrec _ S_SPID_DIE2 = showString "S_SPID_DIE2"
    showsPrec _ S_SPID_DIE3 = showString "S_SPID_DIE3"
    showsPrec _ S_SPID_DIE4 = showString "S_SPID_DIE4"
    showsPrec _ S_SPID_DIE5 = showString "S_SPID_DIE5"
    showsPrec _ S_SPID_DIE6 = showString "S_SPID_DIE6"
    showsPrec _ S_SPID_DIE7 = showString "S_SPID_DIE7"
    showsPrec _ S_SPID_DIE8 = showString "S_SPID_DIE8"
    showsPrec _ S_SPID_DIE9 = showString "S_SPID_DIE9"
    showsPrec _ S_SPID_DIE10 = showString "S_SPID_DIE10"
    showsPrec _ S_SPID_DIE11 = showString "S_SPID_DIE11"
    showsPrec _ S_BSPI_STND = showString "S_BSPI_STND"
    showsPrec _ S_BSPI_STND2 = showString "S_BSPI_STND2"
    showsPrec _ S_BSPI_SIGHT = showString "S_BSPI_SIGHT"
    showsPrec _ S_BSPI_RUN1 = showString "S_BSPI_RUN1"
    showsPrec _ S_BSPI_RUN2 = showString "S_BSPI_RUN2"
    showsPrec _ S_BSPI_RUN3 = showString "S_BSPI_RUN3"
    showsPrec _ S_BSPI_RUN4 = showString "S_BSPI_RUN4"
    showsPrec _ S_BSPI_RUN5 = showString "S_BSPI_RUN5"
    showsPrec _ S_BSPI_RUN6 = showString "S_BSPI_RUN6"
    showsPrec _ S_BSPI_RUN7 = showString "S_BSPI_RUN7"
    showsPrec _ S_BSPI_RUN8 = showString "S_BSPI_RUN8"
    showsPrec _ S_BSPI_RUN9 = showString "S_BSPI_RUN9"
    showsPrec _ S_BSPI_RUN10 = showString "S_BSPI_RUN10"
    showsPrec _ S_BSPI_RUN11 = showString "S_BSPI_RUN11"
    showsPrec _ S_BSPI_RUN12 = showString "S_BSPI_RUN12"
    showsPrec _ S_BSPI_ATK1 = showString "S_BSPI_ATK1"
    showsPrec _ S_BSPI_ATK2 = showString "S_BSPI_ATK2"
    showsPrec _ S_BSPI_ATK3 = showString "S_BSPI_ATK3"
    showsPrec _ S_BSPI_ATK4 = showString "S_BSPI_ATK4"
    showsPrec _ S_BSPI_PAIN = showString "S_BSPI_PAIN"
    showsPrec _ S_BSPI_PAIN2 = showString "S_BSPI_PAIN2"
    showsPrec _ S_BSPI_DIE1 = showString "S_BSPI_DIE1"
    showsPrec _ S_BSPI_DIE2 = showString "S_BSPI_DIE2"
    showsPrec _ S_BSPI_DIE3 = showString "S_BSPI_DIE3"
    showsPrec _ S_BSPI_DIE4 = showString "S_BSPI_DIE4"
    showsPrec _ S_BSPI_DIE5 = showString "S_BSPI_DIE5"
    showsPrec _ S_BSPI_DIE6 = showString "S_BSPI_DIE6"
    showsPrec _ S_BSPI_DIE7 = showString "S_BSPI_DIE7"
    showsPrec _ S_BSPI_RAISE1 = showString "S_BSPI_RAISE1"
    showsPrec _ S_BSPI_RAISE2 = showString "S_BSPI_RAISE2"
    showsPrec _ S_BSPI_RAISE3 = showString "S_BSPI_RAISE3"
    showsPrec _ S_BSPI_RAISE4 = showString "S_BSPI_RAISE4"
    showsPrec _ S_BSPI_RAISE5 = showString "S_BSPI_RAISE5"
    showsPrec _ S_BSPI_RAISE6 = showString "S_BSPI_RAISE6"
    showsPrec _ S_BSPI_RAISE7 = showString "S_BSPI_RAISE7"
    showsPrec _ S_ARACH_PLAZ = showString "S_ARACH_PLAZ"
    showsPrec _ S_ARACH_PLAZ2 = showString "S_ARACH_PLAZ2"
    showsPrec _ S_ARACH_PLEX = showString "S_ARACH_PLEX"
    showsPrec _ S_ARACH_PLEX2 = showString "S_ARACH_PLEX2"
    showsPrec _ S_ARACH_PLEX3 = showString "S_ARACH_PLEX3"
    showsPrec _ S_ARACH_PLEX4 = showString "S_ARACH_PLEX4"
    showsPrec _ S_ARACH_PLEX5 = showString "S_ARACH_PLEX5"
    showsPrec _ S_CYBER_STND = showString "S_CYBER_STND"
    showsPrec _ S_CYBER_STND2 = showString "S_CYBER_STND2"
    showsPrec _ S_CYBER_RUN1 = showString "S_CYBER_RUN1"
    showsPrec _ S_CYBER_RUN2 = showString "S_CYBER_RUN2"
    showsPrec _ S_CYBER_RUN3 = showString "S_CYBER_RUN3"
    showsPrec _ S_CYBER_RUN4 = showString "S_CYBER_RUN4"
    showsPrec _ S_CYBER_RUN5 = showString "S_CYBER_RUN5"
    showsPrec _ S_CYBER_RUN6 = showString "S_CYBER_RUN6"
    showsPrec _ S_CYBER_RUN7 = showString "S_CYBER_RUN7"
    showsPrec _ S_CYBER_RUN8 = showString "S_CYBER_RUN8"
    showsPrec _ S_CYBER_ATK1 = showString "S_CYBER_ATK1"
    showsPrec _ S_CYBER_ATK2 = showString "S_CYBER_ATK2"
    showsPrec _ S_CYBER_ATK3 = showString "S_CYBER_ATK3"
    showsPrec _ S_CYBER_ATK4 = showString "S_CYBER_ATK4"
    showsPrec _ S_CYBER_ATK5 = showString "S_CYBER_ATK5"
    showsPrec _ S_CYBER_ATK6 = showString "S_CYBER_ATK6"
    showsPrec _ S_CYBER_PAIN = showString "S_CYBER_PAIN"
    showsPrec _ S_CYBER_DIE1 = showString "S_CYBER_DIE1"
    showsPrec _ S_CYBER_DIE2 = showString "S_CYBER_DIE2"
    showsPrec _ S_CYBER_DIE3 = showString "S_CYBER_DIE3"
    showsPrec _ S_CYBER_DIE4 = showString "S_CYBER_DIE4"
    showsPrec _ S_CYBER_DIE5 = showString "S_CYBER_DIE5"
    showsPrec _ S_CYBER_DIE6 = showString "S_CYBER_DIE6"
    showsPrec _ S_CYBER_DIE7 = showString "S_CYBER_DIE7"
    showsPrec _ S_CYBER_DIE8 = showString "S_CYBER_DIE8"
    showsPrec _ S_CYBER_DIE9 = showString "S_CYBER_DIE9"
    showsPrec _ S_CYBER_DIE10 = showString "S_CYBER_DIE10"
    showsPrec _ S_PAIN_STND = showString "S_PAIN_STND"
    showsPrec _ S_PAIN_RUN1 = showString "S_PAIN_RUN1"
    showsPrec _ S_PAIN_RUN2 = showString "S_PAIN_RUN2"
    showsPrec _ S_PAIN_RUN3 = showString "S_PAIN_RUN3"
    showsPrec _ S_PAIN_RUN4 = showString "S_PAIN_RUN4"
    showsPrec _ S_PAIN_RUN5 = showString "S_PAIN_RUN5"
    showsPrec _ S_PAIN_RUN6 = showString "S_PAIN_RUN6"
    showsPrec _ S_PAIN_ATK1 = showString "S_PAIN_ATK1"
    showsPrec _ S_PAIN_ATK2 = showString "S_PAIN_ATK2"
    showsPrec _ S_PAIN_ATK3 = showString "S_PAIN_ATK3"
    showsPrec _ S_PAIN_ATK4 = showString "S_PAIN_ATK4"
    showsPrec _ S_PAIN_PAIN = showString "S_PAIN_PAIN"
    showsPrec _ S_PAIN_PAIN2 = showString "S_PAIN_PAIN2"
    showsPrec _ S_PAIN_DIE1 = showString "S_PAIN_DIE1"
    showsPrec _ S_PAIN_DIE2 = showString "S_PAIN_DIE2"
    showsPrec _ S_PAIN_DIE3 = showString "S_PAIN_DIE3"
    showsPrec _ S_PAIN_DIE4 = showString "S_PAIN_DIE4"
    showsPrec _ S_PAIN_DIE5 = showString "S_PAIN_DIE5"
    showsPrec _ S_PAIN_DIE6 = showString "S_PAIN_DIE6"
    showsPrec _ S_PAIN_RAISE1 = showString "S_PAIN_RAISE1"
    showsPrec _ S_PAIN_RAISE2 = showString "S_PAIN_RAISE2"
    showsPrec _ S_PAIN_RAISE3 = showString "S_PAIN_RAISE3"
    showsPrec _ S_PAIN_RAISE4 = showString "S_PAIN_RAISE4"
    showsPrec _ S_PAIN_RAISE5 = showString "S_PAIN_RAISE5"
    showsPrec _ S_PAIN_RAISE6 = showString "S_PAIN_RAISE6"
    showsPrec _ S_SSWV_STND = showString "S_SSWV_STND"
    showsPrec _ S_SSWV_STND2 = showString "S_SSWV_STND2"
    showsPrec _ S_SSWV_RUN1 = showString "S_SSWV_RUN1"
    showsPrec _ S_SSWV_RUN2 = showString "S_SSWV_RUN2"
    showsPrec _ S_SSWV_RUN3 = showString "S_SSWV_RUN3"
    showsPrec _ S_SSWV_RUN4 = showString "S_SSWV_RUN4"
    showsPrec _ S_SSWV_RUN5 = showString "S_SSWV_RUN5"
    showsPrec _ S_SSWV_RUN6 = showString "S_SSWV_RUN6"
    showsPrec _ S_SSWV_RUN7 = showString "S_SSWV_RUN7"
    showsPrec _ S_SSWV_RUN8 = showString "S_SSWV_RUN8"
    showsPrec _ S_SSWV_ATK1 = showString "S_SSWV_ATK1"
    showsPrec _ S_SSWV_ATK2 = showString "S_SSWV_ATK2"
    showsPrec _ S_SSWV_ATK3 = showString "S_SSWV_ATK3"
    showsPrec _ S_SSWV_ATK4 = showString "S_SSWV_ATK4"
    showsPrec _ S_SSWV_ATK5 = showString "S_SSWV_ATK5"
    showsPrec _ S_SSWV_ATK6 = showString "S_SSWV_ATK6"
    showsPrec _ S_SSWV_PAIN = showString "S_SSWV_PAIN"
    showsPrec _ S_SSWV_PAIN2 = showString "S_SSWV_PAIN2"
    showsPrec _ S_SSWV_DIE1 = showString "S_SSWV_DIE1"
    showsPrec _ S_SSWV_DIE2 = showString "S_SSWV_DIE2"
    showsPrec _ S_SSWV_DIE3 = showString "S_SSWV_DIE3"
    showsPrec _ S_SSWV_DIE4 = showString "S_SSWV_DIE4"
    showsPrec _ S_SSWV_DIE5 = showString "S_SSWV_DIE5"
    showsPrec _ S_SSWV_XDIE1 = showString "S_SSWV_XDIE1"
    showsPrec _ S_SSWV_XDIE2 = showString "S_SSWV_XDIE2"
    showsPrec _ S_SSWV_XDIE3 = showString "S_SSWV_XDIE3"
    showsPrec _ S_SSWV_XDIE4 = showString "S_SSWV_XDIE4"
    showsPrec _ S_SSWV_XDIE5 = showString "S_SSWV_XDIE5"
    showsPrec _ S_SSWV_XDIE6 = showString "S_SSWV_XDIE6"
    showsPrec _ S_SSWV_XDIE7 = showString "S_SSWV_XDIE7"
    showsPrec _ S_SSWV_XDIE8 = showString "S_SSWV_XDIE8"
    showsPrec _ S_SSWV_XDIE9 = showString "S_SSWV_XDIE9"
    showsPrec _ S_SSWV_RAISE1 = showString "S_SSWV_RAISE1"
    showsPrec _ S_SSWV_RAISE2 = showString "S_SSWV_RAISE2"
    showsPrec _ S_SSWV_RAISE3 = showString "S_SSWV_RAISE3"
    showsPrec _ S_SSWV_RAISE4 = showString "S_SSWV_RAISE4"
    showsPrec _ S_SSWV_RAISE5 = showString "S_SSWV_RAISE5"
    showsPrec _ S_KEENSTND = showString "S_KEENSTND"
    showsPrec _ S_COMMKEEN = showString "S_COMMKEEN"
    showsPrec _ S_COMMKEEN2 = showString "S_COMMKEEN2"
    showsPrec _ S_COMMKEEN3 = showString "S_COMMKEEN3"
    showsPrec _ S_COMMKEEN4 = showString "S_COMMKEEN4"
    showsPrec _ S_COMMKEEN5 = showString "S_COMMKEEN5"
    showsPrec _ S_COMMKEEN6 = showString "S_COMMKEEN6"
    showsPrec _ S_COMMKEEN7 = showString "S_COMMKEEN7"
    showsPrec _ S_COMMKEEN8 = showString "S_COMMKEEN8"
    showsPrec _ S_COMMKEEN9 = showString "S_COMMKEEN9"
    showsPrec _ S_COMMKEEN10 = showString "S_COMMKEEN10"
    showsPrec _ S_COMMKEEN11 = showString "S_COMMKEEN11"
    showsPrec _ S_COMMKEEN12 = showString "S_COMMKEEN12"
    showsPrec _ S_KEENPAIN = showString "S_KEENPAIN"
    showsPrec _ S_KEENPAIN2 = showString "S_KEENPAIN2"
    showsPrec _ S_BRAIN = showString "S_BRAIN"
    showsPrec _ S_BRAIN_PAIN = showString "S_BRAIN_PAIN"
    showsPrec _ S_BRAIN_DIE1 = showString "S_BRAIN_DIE1"
    showsPrec _ S_BRAIN_DIE2 = showString "S_BRAIN_DIE2"
    showsPrec _ S_BRAIN_DIE3 = showString "S_BRAIN_DIE3"
    showsPrec _ S_BRAIN_DIE4 = showString "S_BRAIN_DIE4"
    showsPrec _ S_BRAINEYE = showString "S_BRAINEYE"
    showsPrec _ S_BRAINEYESEE = showString "S_BRAINEYESEE"
    showsPrec _ S_BRAINEYE1 = showString "S_BRAINEYE1"
    showsPrec _ S_SPAWN1 = showString "S_SPAWN1"
    showsPrec _ S_SPAWN2 = showString "S_SPAWN2"
    showsPrec _ S_SPAWN3 = showString "S_SPAWN3"
    showsPrec _ S_SPAWN4 = showString "S_SPAWN4"
    showsPrec _ S_SPAWNFIRE1 = showString "S_SPAWNFIRE1"
    showsPrec _ S_SPAWNFIRE2 = showString "S_SPAWNFIRE2"
    showsPrec _ S_SPAWNFIRE3 = showString "S_SPAWNFIRE3"
    showsPrec _ S_SPAWNFIRE4 = showString "S_SPAWNFIRE4"
    showsPrec _ S_SPAWNFIRE5 = showString "S_SPAWNFIRE5"
    showsPrec _ S_SPAWNFIRE6 = showString "S_SPAWNFIRE6"
    showsPrec _ S_SPAWNFIRE7 = showString "S_SPAWNFIRE7"
    showsPrec _ S_SPAWNFIRE8 = showString "S_SPAWNFIRE8"
    showsPrec _ S_BRAINEXPLODE1 = showString "S_BRAINEXPLODE1"
    showsPrec _ S_BRAINEXPLODE2 = showString "S_BRAINEXPLODE2"
    showsPrec _ S_BRAINEXPLODE3 = showString "S_BRAINEXPLODE3"
    showsPrec _ S_ARM1 = showString "S_ARM1"
    showsPrec _ S_ARM1A = showString "S_ARM1A"
    showsPrec _ S_ARM2 = showString "S_ARM2"
    showsPrec _ S_ARM2A = showString "S_ARM2A"
    showsPrec _ S_BAR1 = showString "S_BAR1"
    showsPrec _ S_BAR2 = showString "S_BAR2"
    showsPrec _ S_BEXP = showString "S_BEXP"
    showsPrec _ S_BEXP2 = showString "S_BEXP2"
    showsPrec _ S_BEXP3 = showString "S_BEXP3"
    showsPrec _ S_BEXP4 = showString "S_BEXP4"
    showsPrec _ S_BEXP5 = showString "S_BEXP5"
    showsPrec _ S_BBAR1 = showString "S_BBAR1"
    showsPrec _ S_BBAR2 = showString "S_BBAR2"
    showsPrec _ S_BBAR3 = showString "S_BBAR3"
    showsPrec _ S_BON1 = showString "S_BON1"
    showsPrec _ S_BON1A = showString "S_BON1A"
    showsPrec _ S_BON1B = showString "S_BON1B"
    showsPrec _ S_BON1C = showString "S_BON1C"
    showsPrec _ S_BON1D = showString "S_BON1D"
    showsPrec _ S_BON1E = showString "S_BON1E"
    showsPrec _ S_BON2 = showString "S_BON2"
    showsPrec _ S_BON2A = showString "S_BON2A"
    showsPrec _ S_BON2B = showString "S_BON2B"
    showsPrec _ S_BON2C = showString "S_BON2C"
    showsPrec _ S_BON2D = showString "S_BON2D"
    showsPrec _ S_BON2E = showString "S_BON2E"
    showsPrec _ S_BKEY = showString "S_BKEY"
    showsPrec _ S_BKEY2 = showString "S_BKEY2"
    showsPrec _ S_RKEY = showString "S_RKEY"
    showsPrec _ S_RKEY2 = showString "S_RKEY2"
    showsPrec _ S_YKEY = showString "S_YKEY"
    showsPrec _ S_YKEY2 = showString "S_YKEY2"
    showsPrec _ S_BSKULL = showString "S_BSKULL"
    showsPrec _ S_BSKULL2 = showString "S_BSKULL2"
    showsPrec _ S_RSKULL = showString "S_RSKULL"
    showsPrec _ S_RSKULL2 = showString "S_RSKULL2"
    showsPrec _ S_YSKULL = showString "S_YSKULL"
    showsPrec _ S_YSKULL2 = showString "S_YSKULL2"
    showsPrec _ S_STIM = showString "S_STIM"
    showsPrec _ S_MEDI = showString "S_MEDI"
    showsPrec _ S_SOUL = showString "S_SOUL"
    showsPrec _ S_SOUL2 = showString "S_SOUL2"
    showsPrec _ S_SOUL3 = showString "S_SOUL3"
    showsPrec _ S_SOUL4 = showString "S_SOUL4"
    showsPrec _ S_SOUL5 = showString "S_SOUL5"
    showsPrec _ S_SOUL6 = showString "S_SOUL6"
    showsPrec _ S_PINV = showString "S_PINV"
    showsPrec _ S_PINV2 = showString "S_PINV2"
    showsPrec _ S_PINV3 = showString "S_PINV3"
    showsPrec _ S_PINV4 = showString "S_PINV4"
    showsPrec _ S_PSTR = showString "S_PSTR"
    showsPrec _ S_PINS = showString "S_PINS"
    showsPrec _ S_PINS2 = showString "S_PINS2"
    showsPrec _ S_PINS3 = showString "S_PINS3"
    showsPrec _ S_PINS4 = showString "S_PINS4"
    showsPrec _ S_MEGA = showString "S_MEGA"
    showsPrec _ S_MEGA2 = showString "S_MEGA2"
    showsPrec _ S_MEGA3 = showString "S_MEGA3"
    showsPrec _ S_MEGA4 = showString "S_MEGA4"
    showsPrec _ S_SUIT = showString "S_SUIT"
    showsPrec _ S_PMAP = showString "S_PMAP"
    showsPrec _ S_PMAP2 = showString "S_PMAP2"
    showsPrec _ S_PMAP3 = showString "S_PMAP3"
    showsPrec _ S_PMAP4 = showString "S_PMAP4"
    showsPrec _ S_PMAP5 = showString "S_PMAP5"
    showsPrec _ S_PMAP6 = showString "S_PMAP6"
    showsPrec _ S_PVIS = showString "S_PVIS"
    showsPrec _ S_PVIS2 = showString "S_PVIS2"
    showsPrec _ S_CLIP = showString "S_CLIP"
    showsPrec _ S_AMMO = showString "S_AMMO"
    showsPrec _ S_ROCK = showString "S_ROCK"
    showsPrec _ S_BROK = showString "S_BROK"
    showsPrec _ S_CELL = showString "S_CELL"
    showsPrec _ S_CELP = showString "S_CELP"
    showsPrec _ S_SHEL = showString "S_SHEL"
    showsPrec _ S_SBOX = showString "S_SBOX"
    showsPrec _ S_BPAK = showString "S_BPAK"
    showsPrec _ S_BFUG = showString "S_BFUG"
    showsPrec _ S_MGUN = showString "S_MGUN"
    showsPrec _ S_CSAW = showString "S_CSAW"
    showsPrec _ S_LAUN = showString "S_LAUN"
    showsPrec _ S_PLAS = showString "S_PLAS"
    showsPrec _ S_SHOT = showString "S_SHOT"
    showsPrec _ S_SHOT2 = showString "S_SHOT2"
    showsPrec _ S_COLU = showString "S_COLU"
    showsPrec _ S_STALAG = showString "S_STALAG"
    showsPrec _ S_BLOODYTWITCH = showString "S_BLOODYTWITCH"
    showsPrec _ S_BLOODYTWITCH2 = showString "S_BLOODYTWITCH2"
    showsPrec _ S_BLOODYTWITCH3 = showString "S_BLOODYTWITCH3"
    showsPrec _ S_BLOODYTWITCH4 = showString "S_BLOODYTWITCH4"
    showsPrec _ S_DEADTORSO = showString "S_DEADTORSO"
    showsPrec _ S_DEADBOTTOM = showString "S_DEADBOTTOM"
    showsPrec _ S_HEADSONSTICK = showString "S_HEADSONSTICK"
    showsPrec _ S_GIBS = showString "S_GIBS"
    showsPrec _ S_HEADONASTICK = showString "S_HEADONASTICK"
    showsPrec _ S_HEADCANDLES = showString "S_HEADCANDLES"
    showsPrec _ S_HEADCANDLES2 = showString "S_HEADCANDLES2"
    showsPrec _ S_DEADSTICK = showString "S_DEADSTICK"
    showsPrec _ S_LIVESTICK = showString "S_LIVESTICK"
    showsPrec _ S_LIVESTICK2 = showString "S_LIVESTICK2"
    showsPrec _ S_MEAT2 = showString "S_MEAT2"
    showsPrec _ S_MEAT3 = showString "S_MEAT3"
    showsPrec _ S_MEAT4 = showString "S_MEAT4"
    showsPrec _ S_MEAT5 = showString "S_MEAT5"
    showsPrec _ S_STALAGTITE = showString "S_STALAGTITE"
    showsPrec _ S_TALLGRNCOL = showString "S_TALLGRNCOL"
    showsPrec _ S_SHRTGRNCOL = showString "S_SHRTGRNCOL"
    showsPrec _ S_TALLREDCOL = showString "S_TALLREDCOL"
    showsPrec _ S_SHRTREDCOL = showString "S_SHRTREDCOL"
    showsPrec _ S_CANDLESTIK = showString "S_CANDLESTIK"
    showsPrec _ S_CANDELABRA = showString "S_CANDELABRA"
    showsPrec _ S_SKULLCOL = showString "S_SKULLCOL"
    showsPrec _ S_TORCHTREE = showString "S_TORCHTREE"
    showsPrec _ S_BIGTREE = showString "S_BIGTREE"
    showsPrec _ S_TECHPILLAR = showString "S_TECHPILLAR"
    showsPrec _ S_EVILEYE = showString "S_EVILEYE"
    showsPrec _ S_EVILEYE2 = showString "S_EVILEYE2"
    showsPrec _ S_EVILEYE3 = showString "S_EVILEYE3"
    showsPrec _ S_EVILEYE4 = showString "S_EVILEYE4"
    showsPrec _ S_FLOATSKULL = showString "S_FLOATSKULL"
    showsPrec _ S_FLOATSKULL2 = showString "S_FLOATSKULL2"
    showsPrec _ S_FLOATSKULL3 = showString "S_FLOATSKULL3"
    showsPrec _ S_HEARTCOL = showString "S_HEARTCOL"
    showsPrec _ S_HEARTCOL2 = showString "S_HEARTCOL2"
    showsPrec _ S_BLUETORCH = showString "S_BLUETORCH"
    showsPrec _ S_BLUETORCH2 = showString "S_BLUETORCH2"
    showsPrec _ S_BLUETORCH3 = showString "S_BLUETORCH3"
    showsPrec _ S_BLUETORCH4 = showString "S_BLUETORCH4"
    showsPrec _ S_GREENTORCH = showString "S_GREENTORCH"
    showsPrec _ S_GREENTORCH2 = showString "S_GREENTORCH2"
    showsPrec _ S_GREENTORCH3 = showString "S_GREENTORCH3"
    showsPrec _ S_GREENTORCH4 = showString "S_GREENTORCH4"
    showsPrec _ S_REDTORCH = showString "S_REDTORCH"
    showsPrec _ S_REDTORCH2 = showString "S_REDTORCH2"
    showsPrec _ S_REDTORCH3 = showString "S_REDTORCH3"
    showsPrec _ S_REDTORCH4 = showString "S_REDTORCH4"
    showsPrec _ S_BTORCHSHRT = showString "S_BTORCHSHRT"
    showsPrec _ S_BTORCHSHRT2 = showString "S_BTORCHSHRT2"
    showsPrec _ S_BTORCHSHRT3 = showString "S_BTORCHSHRT3"
    showsPrec _ S_BTORCHSHRT4 = showString "S_BTORCHSHRT4"
    showsPrec _ S_GTORCHSHRT = showString "S_GTORCHSHRT"
    showsPrec _ S_GTORCHSHRT2 = showString "S_GTORCHSHRT2"
    showsPrec _ S_GTORCHSHRT3 = showString "S_GTORCHSHRT3"
    showsPrec _ S_GTORCHSHRT4 = showString "S_GTORCHSHRT4"
    showsPrec _ S_RTORCHSHRT = showString "S_RTORCHSHRT"
    showsPrec _ S_RTORCHSHRT2 = showString "S_RTORCHSHRT2"
    showsPrec _ S_RTORCHSHRT3 = showString "S_RTORCHSHRT3"
    showsPrec _ S_RTORCHSHRT4 = showString "S_RTORCHSHRT4"
    showsPrec _ S_HANGNOGUTS = showString "S_HANGNOGUTS"
    showsPrec _ S_HANGBNOBRAIN = showString "S_HANGBNOBRAIN"
    showsPrec _ S_HANGTLOOKDN = showString "S_HANGTLOOKDN"
    showsPrec _ S_HANGTSKULL = showString "S_HANGTSKULL"
    showsPrec _ S_HANGTLOOKUP = showString "S_HANGTLOOKUP"
    showsPrec _ S_HANGTNOBRAIN = showString "S_HANGTNOBRAIN"
    showsPrec _ S_COLONGIBS = showString "S_COLONGIBS"
    showsPrec _ S_SMALLPOOL = showString "S_SMALLPOOL"
    showsPrec _ S_BRAINSTEM = showString "S_BRAINSTEM"
    showsPrec _ S_TECHLAMP = showString "S_TECHLAMP"
    showsPrec _ S_TECHLAMP2 = showString "S_TECHLAMP2"
    showsPrec _ S_TECHLAMP3 = showString "S_TECHLAMP3"
    showsPrec _ S_TECHLAMP4 = showString "S_TECHLAMP4"
    showsPrec _ S_TECH2LAMP = showString "S_TECH2LAMP"
    showsPrec _ S_TECH2LAMP2 = showString "S_TECH2LAMP2"
    showsPrec _ S_TECH2LAMP3 = showString "S_TECH2LAMP3"
    showsPrec _ S_TECH2LAMP4 = showString "S_TECH2LAMP4"
    showsPrec d (StateName i) = showString "StateName " . showsPrec d i

pattern S_NULL :: StateName
pattern S_NULL = StateName 0

pattern S_LIGHTDONE :: StateName
pattern S_LIGHTDONE = StateName 1

pattern S_PUNCH :: StateName
pattern S_PUNCH = StateName 2

pattern S_PUNCHDOWN :: StateName
pattern S_PUNCHDOWN = StateName 3

pattern S_PUNCHUP :: StateName
pattern S_PUNCHUP = StateName 4

pattern S_PUNCH1 :: StateName
pattern S_PUNCH1 = StateName 5

pattern S_PUNCH2 :: StateName
pattern S_PUNCH2 = StateName 6

pattern S_PUNCH3 :: StateName
pattern S_PUNCH3 = StateName 7

pattern S_PUNCH4 :: StateName
pattern S_PUNCH4 = StateName 8

pattern S_PUNCH5 :: StateName
pattern S_PUNCH5 = StateName 9

pattern S_PISTOL :: StateName
pattern S_PISTOL = StateName 10

pattern S_PISTOLDOWN :: StateName
pattern S_PISTOLDOWN = StateName 11

pattern S_PISTOLUP :: StateName
pattern S_PISTOLUP = StateName 12

pattern S_PISTOL1 :: StateName
pattern S_PISTOL1 = StateName 13

pattern S_PISTOL2 :: StateName
pattern S_PISTOL2 = StateName 14

pattern S_PISTOL3 :: StateName
pattern S_PISTOL3 = StateName 15

pattern S_PISTOL4 :: StateName
pattern S_PISTOL4 = StateName 16

pattern S_PISTOLFLASH :: StateName
pattern S_PISTOLFLASH = StateName 17

pattern S_SGUN :: StateName
pattern S_SGUN = StateName 18

pattern S_SGUNDOWN :: StateName
pattern S_SGUNDOWN = StateName 19

pattern S_SGUNUP :: StateName
pattern S_SGUNUP = StateName 20

pattern S_SGUN1 :: StateName
pattern S_SGUN1 = StateName 21

pattern S_SGUN2 :: StateName
pattern S_SGUN2 = StateName 22

pattern S_SGUN3 :: StateName
pattern S_SGUN3 = StateName 23

pattern S_SGUN4 :: StateName
pattern S_SGUN4 = StateName 24

pattern S_SGUN5 :: StateName
pattern S_SGUN5 = StateName 25

pattern S_SGUN6 :: StateName
pattern S_SGUN6 = StateName 26

pattern S_SGUN7 :: StateName
pattern S_SGUN7 = StateName 27

pattern S_SGUN8 :: StateName
pattern S_SGUN8 = StateName 28

pattern S_SGUN9 :: StateName
pattern S_SGUN9 = StateName 29

pattern S_SGUNFLASH1 :: StateName
pattern S_SGUNFLASH1 = StateName 30

pattern S_SGUNFLASH2 :: StateName
pattern S_SGUNFLASH2 = StateName 31

pattern S_DSGUN :: StateName
pattern S_DSGUN = StateName 32

pattern S_DSGUNDOWN :: StateName
pattern S_DSGUNDOWN = StateName 33

pattern S_DSGUNUP :: StateName
pattern S_DSGUNUP = StateName 34

pattern S_DSGUN1 :: StateName
pattern S_DSGUN1 = StateName 35

pattern S_DSGUN2 :: StateName
pattern S_DSGUN2 = StateName 36

pattern S_DSGUN3 :: StateName
pattern S_DSGUN3 = StateName 37

pattern S_DSGUN4 :: StateName
pattern S_DSGUN4 = StateName 38

pattern S_DSGUN5 :: StateName
pattern S_DSGUN5 = StateName 39

pattern S_DSGUN6 :: StateName
pattern S_DSGUN6 = StateName 40

pattern S_DSGUN7 :: StateName
pattern S_DSGUN7 = StateName 41

pattern S_DSGUN8 :: StateName
pattern S_DSGUN8 = StateName 42

pattern S_DSGUN9 :: StateName
pattern S_DSGUN9 = StateName 43

pattern S_DSGUN10 :: StateName
pattern S_DSGUN10 = StateName 44

pattern S_DSNR1 :: StateName
pattern S_DSNR1 = StateName 45

pattern S_DSNR2 :: StateName
pattern S_DSNR2 = StateName 46

pattern S_DSGUNFLASH1 :: StateName
pattern S_DSGUNFLASH1 = StateName 47

pattern S_DSGUNFLASH2 :: StateName
pattern S_DSGUNFLASH2 = StateName 48

pattern S_CHAIN :: StateName
pattern S_CHAIN = StateName 49

pattern S_CHAINDOWN :: StateName
pattern S_CHAINDOWN = StateName 50

pattern S_CHAINUP :: StateName
pattern S_CHAINUP = StateName 51

pattern S_CHAIN1 :: StateName
pattern S_CHAIN1 = StateName 52

pattern S_CHAIN2 :: StateName
pattern S_CHAIN2 = StateName 53

pattern S_CHAIN3 :: StateName
pattern S_CHAIN3 = StateName 54

pattern S_CHAINFLASH1 :: StateName
pattern S_CHAINFLASH1 = StateName 55

pattern S_CHAINFLASH2 :: StateName
pattern S_CHAINFLASH2 = StateName 56

pattern S_MISSILE :: StateName
pattern S_MISSILE = StateName 57

pattern S_MISSILEDOWN :: StateName
pattern S_MISSILEDOWN = StateName 58

pattern S_MISSILEUP :: StateName
pattern S_MISSILEUP = StateName 59

pattern S_MISSILE1 :: StateName
pattern S_MISSILE1 = StateName 60

pattern S_MISSILE2 :: StateName
pattern S_MISSILE2 = StateName 61

pattern S_MISSILE3 :: StateName
pattern S_MISSILE3 = StateName 62

pattern S_MISSILEFLASH1 :: StateName
pattern S_MISSILEFLASH1 = StateName 63

pattern S_MISSILEFLASH2 :: StateName
pattern S_MISSILEFLASH2 = StateName 64

pattern S_MISSILEFLASH3 :: StateName
pattern S_MISSILEFLASH3 = StateName 65

pattern S_MISSILEFLASH4 :: StateName
pattern S_MISSILEFLASH4 = StateName 66

pattern S_SAW :: StateName
pattern S_SAW = StateName 67

pattern S_SAWB :: StateName
pattern S_SAWB = StateName 68

pattern S_SAWDOWN :: StateName
pattern S_SAWDOWN = StateName 69

pattern S_SAWUP :: StateName
pattern S_SAWUP = StateName 70

pattern S_SAW1 :: StateName
pattern S_SAW1 = StateName 71

pattern S_SAW2 :: StateName
pattern S_SAW2 = StateName 72

pattern S_SAW3 :: StateName
pattern S_SAW3 = StateName 73

pattern S_PLASMA :: StateName
pattern S_PLASMA = StateName 74

pattern S_PLASMADOWN :: StateName
pattern S_PLASMADOWN = StateName 75

pattern S_PLASMAUP :: StateName
pattern S_PLASMAUP = StateName 76

pattern S_PLASMA1 :: StateName
pattern S_PLASMA1 = StateName 77

pattern S_PLASMA2 :: StateName
pattern S_PLASMA2 = StateName 78

pattern S_PLASMAFLASH1 :: StateName
pattern S_PLASMAFLASH1 = StateName 79

pattern S_PLASMAFLASH2 :: StateName
pattern S_PLASMAFLASH2 = StateName 80

pattern S_BFG :: StateName
pattern S_BFG = StateName 81

pattern S_BFGDOWN :: StateName
pattern S_BFGDOWN = StateName 82

pattern S_BFGUP :: StateName
pattern S_BFGUP = StateName 83

pattern S_BFG1 :: StateName
pattern S_BFG1 = StateName 84

pattern S_BFG2 :: StateName
pattern S_BFG2 = StateName 85

pattern S_BFG3 :: StateName
pattern S_BFG3 = StateName 86

pattern S_BFG4 :: StateName
pattern S_BFG4 = StateName 87

pattern S_BFGFLASH1 :: StateName
pattern S_BFGFLASH1 = StateName 88

pattern S_BFGFLASH2 :: StateName
pattern S_BFGFLASH2 = StateName 89

pattern S_BLOOD1 :: StateName
pattern S_BLOOD1 = StateName 90

pattern S_BLOOD2 :: StateName
pattern S_BLOOD2 = StateName 91

pattern S_BLOOD3 :: StateName
pattern S_BLOOD3 = StateName 92

pattern S_PUFF1 :: StateName
pattern S_PUFF1 = StateName 93

pattern S_PUFF2 :: StateName
pattern S_PUFF2 = StateName 94

pattern S_PUFF3 :: StateName
pattern S_PUFF3 = StateName 95

pattern S_PUFF4 :: StateName
pattern S_PUFF4 = StateName 96

pattern S_TBALL1 :: StateName
pattern S_TBALL1 = StateName 97

pattern S_TBALL2 :: StateName
pattern S_TBALL2 = StateName 98

pattern S_TBALLX1 :: StateName
pattern S_TBALLX1 = StateName 99

pattern S_TBALLX2 :: StateName
pattern S_TBALLX2 = StateName 100

pattern S_TBALLX3 :: StateName
pattern S_TBALLX3 = StateName 101

pattern S_RBALL1 :: StateName
pattern S_RBALL1 = StateName 102

pattern S_RBALL2 :: StateName
pattern S_RBALL2 = StateName 103

pattern S_RBALLX1 :: StateName
pattern S_RBALLX1 = StateName 104

pattern S_RBALLX2 :: StateName
pattern S_RBALLX2 = StateName 105

pattern S_RBALLX3 :: StateName
pattern S_RBALLX3 = StateName 106

pattern S_PLASBALL :: StateName
pattern S_PLASBALL = StateName 107

pattern S_PLASBALL2 :: StateName
pattern S_PLASBALL2 = StateName 108

pattern S_PLASEXP :: StateName
pattern S_PLASEXP = StateName 109

pattern S_PLASEXP2 :: StateName
pattern S_PLASEXP2 = StateName 110

pattern S_PLASEXP3 :: StateName
pattern S_PLASEXP3 = StateName 111

pattern S_PLASEXP4 :: StateName
pattern S_PLASEXP4 = StateName 112

pattern S_PLASEXP5 :: StateName
pattern S_PLASEXP5 = StateName 113

pattern S_ROCKET :: StateName
pattern S_ROCKET = StateName 114

pattern S_BFGSHOT :: StateName
pattern S_BFGSHOT = StateName 115

pattern S_BFGSHOT2 :: StateName
pattern S_BFGSHOT2 = StateName 116

pattern S_BFGLAND :: StateName
pattern S_BFGLAND = StateName 117

pattern S_BFGLAND2 :: StateName
pattern S_BFGLAND2 = StateName 118

pattern S_BFGLAND3 :: StateName
pattern S_BFGLAND3 = StateName 119

pattern S_BFGLAND4 :: StateName
pattern S_BFGLAND4 = StateName 120

pattern S_BFGLAND5 :: StateName
pattern S_BFGLAND5 = StateName 121

pattern S_BFGLAND6 :: StateName
pattern S_BFGLAND6 = StateName 122

pattern S_BFGEXP :: StateName
pattern S_BFGEXP = StateName 123

pattern S_BFGEXP2 :: StateName
pattern S_BFGEXP2 = StateName 124

pattern S_BFGEXP3 :: StateName
pattern S_BFGEXP3 = StateName 125

pattern S_BFGEXP4 :: StateName
pattern S_BFGEXP4 = StateName 126

pattern S_EXPLODE1 :: StateName
pattern S_EXPLODE1 = StateName 127

pattern S_EXPLODE2 :: StateName
pattern S_EXPLODE2 = StateName 128

pattern S_EXPLODE3 :: StateName
pattern S_EXPLODE3 = StateName 129

pattern S_TFOG :: StateName
pattern S_TFOG = StateName 130

pattern S_TFOG01 :: StateName
pattern S_TFOG01 = StateName 131

pattern S_TFOG02 :: StateName
pattern S_TFOG02 = StateName 132

pattern S_TFOG2 :: StateName
pattern S_TFOG2 = StateName 133

pattern S_TFOG3 :: StateName
pattern S_TFOG3 = StateName 134

pattern S_TFOG4 :: StateName
pattern S_TFOG4 = StateName 135

pattern S_TFOG5 :: StateName
pattern S_TFOG5 = StateName 136

pattern S_TFOG6 :: StateName
pattern S_TFOG6 = StateName 137

pattern S_TFOG7 :: StateName
pattern S_TFOG7 = StateName 138

pattern S_TFOG8 :: StateName
pattern S_TFOG8 = StateName 139

pattern S_TFOG9 :: StateName
pattern S_TFOG9 = StateName 140

pattern S_TFOG10 :: StateName
pattern S_TFOG10 = StateName 141

pattern S_IFOG :: StateName
pattern S_IFOG = StateName 142

pattern S_IFOG01 :: StateName
pattern S_IFOG01 = StateName 143

pattern S_IFOG02 :: StateName
pattern S_IFOG02 = StateName 144

pattern S_IFOG2 :: StateName
pattern S_IFOG2 = StateName 145

pattern S_IFOG3 :: StateName
pattern S_IFOG3 = StateName 146

pattern S_IFOG4 :: StateName
pattern S_IFOG4 = StateName 147

pattern S_IFOG5 :: StateName
pattern S_IFOG5 = StateName 148

pattern S_PLAY :: StateName
pattern S_PLAY = StateName 149

pattern S_PLAY_RUN1 :: StateName
pattern S_PLAY_RUN1 = StateName 150

pattern S_PLAY_RUN2 :: StateName
pattern S_PLAY_RUN2 = StateName 151

pattern S_PLAY_RUN3 :: StateName
pattern S_PLAY_RUN3 = StateName 152

pattern S_PLAY_RUN4 :: StateName
pattern S_PLAY_RUN4 = StateName 153

pattern S_PLAY_ATK1 :: StateName
pattern S_PLAY_ATK1 = StateName 154

pattern S_PLAY_ATK2 :: StateName
pattern S_PLAY_ATK2 = StateName 155

pattern S_PLAY_PAIN :: StateName
pattern S_PLAY_PAIN = StateName 156

pattern S_PLAY_PAIN2 :: StateName
pattern S_PLAY_PAIN2 = StateName 157

pattern S_PLAY_DIE1 :: StateName
pattern S_PLAY_DIE1 = StateName 158

pattern S_PLAY_DIE2 :: StateName
pattern S_PLAY_DIE2 = StateName 159

pattern S_PLAY_DIE3 :: StateName
pattern S_PLAY_DIE3 = StateName 160

pattern S_PLAY_DIE4 :: StateName
pattern S_PLAY_DIE4 = StateName 161

pattern S_PLAY_DIE5 :: StateName
pattern S_PLAY_DIE5 = StateName 162

pattern S_PLAY_DIE6 :: StateName
pattern S_PLAY_DIE6 = StateName 163

pattern S_PLAY_DIE7 :: StateName
pattern S_PLAY_DIE7 = StateName 164

pattern S_PLAY_XDIE1 :: StateName
pattern S_PLAY_XDIE1 = StateName 165

pattern S_PLAY_XDIE2 :: StateName
pattern S_PLAY_XDIE2 = StateName 166

pattern S_PLAY_XDIE3 :: StateName
pattern S_PLAY_XDIE3 = StateName 167

pattern S_PLAY_XDIE4 :: StateName
pattern S_PLAY_XDIE4 = StateName 168

pattern S_PLAY_XDIE5 :: StateName
pattern S_PLAY_XDIE5 = StateName 169

pattern S_PLAY_XDIE6 :: StateName
pattern S_PLAY_XDIE6 = StateName 170

pattern S_PLAY_XDIE7 :: StateName
pattern S_PLAY_XDIE7 = StateName 171

pattern S_PLAY_XDIE8 :: StateName
pattern S_PLAY_XDIE8 = StateName 172

pattern S_PLAY_XDIE9 :: StateName
pattern S_PLAY_XDIE9 = StateName 173

pattern S_POSS_STND :: StateName
pattern S_POSS_STND = StateName 174

pattern S_POSS_STND2 :: StateName
pattern S_POSS_STND2 = StateName 175

pattern S_POSS_RUN1 :: StateName
pattern S_POSS_RUN1 = StateName 176

pattern S_POSS_RUN2 :: StateName
pattern S_POSS_RUN2 = StateName 177

pattern S_POSS_RUN3 :: StateName
pattern S_POSS_RUN3 = StateName 178

pattern S_POSS_RUN4 :: StateName
pattern S_POSS_RUN4 = StateName 179

pattern S_POSS_RUN5 :: StateName
pattern S_POSS_RUN5 = StateName 180

pattern S_POSS_RUN6 :: StateName
pattern S_POSS_RUN6 = StateName 181

pattern S_POSS_RUN7 :: StateName
pattern S_POSS_RUN7 = StateName 182

pattern S_POSS_RUN8 :: StateName
pattern S_POSS_RUN8 = StateName 183

pattern S_POSS_ATK1 :: StateName
pattern S_POSS_ATK1 = StateName 184

pattern S_POSS_ATK2 :: StateName
pattern S_POSS_ATK2 = StateName 185

pattern S_POSS_ATK3 :: StateName
pattern S_POSS_ATK3 = StateName 186

pattern S_POSS_PAIN :: StateName
pattern S_POSS_PAIN = StateName 187

pattern S_POSS_PAIN2 :: StateName
pattern S_POSS_PAIN2 = StateName 188

pattern S_POSS_DIE1 :: StateName
pattern S_POSS_DIE1 = StateName 189

pattern S_POSS_DIE2 :: StateName
pattern S_POSS_DIE2 = StateName 190

pattern S_POSS_DIE3 :: StateName
pattern S_POSS_DIE3 = StateName 191

pattern S_POSS_DIE4 :: StateName
pattern S_POSS_DIE4 = StateName 192

pattern S_POSS_DIE5 :: StateName
pattern S_POSS_DIE5 = StateName 193

pattern S_POSS_XDIE1 :: StateName
pattern S_POSS_XDIE1 = StateName 194

pattern S_POSS_XDIE2 :: StateName
pattern S_POSS_XDIE2 = StateName 195

pattern S_POSS_XDIE3 :: StateName
pattern S_POSS_XDIE3 = StateName 196

pattern S_POSS_XDIE4 :: StateName
pattern S_POSS_XDIE4 = StateName 197

pattern S_POSS_XDIE5 :: StateName
pattern S_POSS_XDIE5 = StateName 198

pattern S_POSS_XDIE6 :: StateName
pattern S_POSS_XDIE6 = StateName 199

pattern S_POSS_XDIE7 :: StateName
pattern S_POSS_XDIE7 = StateName 200

pattern S_POSS_XDIE8 :: StateName
pattern S_POSS_XDIE8 = StateName 201

pattern S_POSS_XDIE9 :: StateName
pattern S_POSS_XDIE9 = StateName 202

pattern S_POSS_RAISE1 :: StateName
pattern S_POSS_RAISE1 = StateName 203

pattern S_POSS_RAISE2 :: StateName
pattern S_POSS_RAISE2 = StateName 204

pattern S_POSS_RAISE3 :: StateName
pattern S_POSS_RAISE3 = StateName 205

pattern S_POSS_RAISE4 :: StateName
pattern S_POSS_RAISE4 = StateName 206

pattern S_SPOS_STND :: StateName
pattern S_SPOS_STND = StateName 207

pattern S_SPOS_STND2 :: StateName
pattern S_SPOS_STND2 = StateName 208

pattern S_SPOS_RUN1 :: StateName
pattern S_SPOS_RUN1 = StateName 209

pattern S_SPOS_RUN2 :: StateName
pattern S_SPOS_RUN2 = StateName 210

pattern S_SPOS_RUN3 :: StateName
pattern S_SPOS_RUN3 = StateName 211

pattern S_SPOS_RUN4 :: StateName
pattern S_SPOS_RUN4 = StateName 212

pattern S_SPOS_RUN5 :: StateName
pattern S_SPOS_RUN5 = StateName 213

pattern S_SPOS_RUN6 :: StateName
pattern S_SPOS_RUN6 = StateName 214

pattern S_SPOS_RUN7 :: StateName
pattern S_SPOS_RUN7 = StateName 215

pattern S_SPOS_RUN8 :: StateName
pattern S_SPOS_RUN8 = StateName 216

pattern S_SPOS_ATK1 :: StateName
pattern S_SPOS_ATK1 = StateName 217

pattern S_SPOS_ATK2 :: StateName
pattern S_SPOS_ATK2 = StateName 218

pattern S_SPOS_ATK3 :: StateName
pattern S_SPOS_ATK3 = StateName 219

pattern S_SPOS_PAIN :: StateName
pattern S_SPOS_PAIN = StateName 220

pattern S_SPOS_PAIN2 :: StateName
pattern S_SPOS_PAIN2 = StateName 221

pattern S_SPOS_DIE1 :: StateName
pattern S_SPOS_DIE1 = StateName 222

pattern S_SPOS_DIE2 :: StateName
pattern S_SPOS_DIE2 = StateName 223

pattern S_SPOS_DIE3 :: StateName
pattern S_SPOS_DIE3 = StateName 224

pattern S_SPOS_DIE4 :: StateName
pattern S_SPOS_DIE4 = StateName 225

pattern S_SPOS_DIE5 :: StateName
pattern S_SPOS_DIE5 = StateName 226

pattern S_SPOS_XDIE1 :: StateName
pattern S_SPOS_XDIE1 = StateName 227

pattern S_SPOS_XDIE2 :: StateName
pattern S_SPOS_XDIE2 = StateName 228

pattern S_SPOS_XDIE3 :: StateName
pattern S_SPOS_XDIE3 = StateName 229

pattern S_SPOS_XDIE4 :: StateName
pattern S_SPOS_XDIE4 = StateName 230

pattern S_SPOS_XDIE5 :: StateName
pattern S_SPOS_XDIE5 = StateName 231

pattern S_SPOS_XDIE6 :: StateName
pattern S_SPOS_XDIE6 = StateName 232

pattern S_SPOS_XDIE7 :: StateName
pattern S_SPOS_XDIE7 = StateName 233

pattern S_SPOS_XDIE8 :: StateName
pattern S_SPOS_XDIE8 = StateName 234

pattern S_SPOS_XDIE9 :: StateName
pattern S_SPOS_XDIE9 = StateName 235

pattern S_SPOS_RAISE1 :: StateName
pattern S_SPOS_RAISE1 = StateName 236

pattern S_SPOS_RAISE2 :: StateName
pattern S_SPOS_RAISE2 = StateName 237

pattern S_SPOS_RAISE3 :: StateName
pattern S_SPOS_RAISE3 = StateName 238

pattern S_SPOS_RAISE4 :: StateName
pattern S_SPOS_RAISE4 = StateName 239

pattern S_SPOS_RAISE5 :: StateName
pattern S_SPOS_RAISE5 = StateName 240

pattern S_VILE_STND :: StateName
pattern S_VILE_STND = StateName 241

pattern S_VILE_STND2 :: StateName
pattern S_VILE_STND2 = StateName 242

pattern S_VILE_RUN1 :: StateName
pattern S_VILE_RUN1 = StateName 243

pattern S_VILE_RUN2 :: StateName
pattern S_VILE_RUN2 = StateName 244

pattern S_VILE_RUN3 :: StateName
pattern S_VILE_RUN3 = StateName 245

pattern S_VILE_RUN4 :: StateName
pattern S_VILE_RUN4 = StateName 246

pattern S_VILE_RUN5 :: StateName
pattern S_VILE_RUN5 = StateName 247

pattern S_VILE_RUN6 :: StateName
pattern S_VILE_RUN6 = StateName 248

pattern S_VILE_RUN7 :: StateName
pattern S_VILE_RUN7 = StateName 249

pattern S_VILE_RUN8 :: StateName
pattern S_VILE_RUN8 = StateName 250

pattern S_VILE_RUN9 :: StateName
pattern S_VILE_RUN9 = StateName 251

pattern S_VILE_RUN10 :: StateName
pattern S_VILE_RUN10 = StateName 252

pattern S_VILE_RUN11 :: StateName
pattern S_VILE_RUN11 = StateName 253

pattern S_VILE_RUN12 :: StateName
pattern S_VILE_RUN12 = StateName 254

pattern S_VILE_ATK1 :: StateName
pattern S_VILE_ATK1 = StateName 255

pattern S_VILE_ATK2 :: StateName
pattern S_VILE_ATK2 = StateName 256

pattern S_VILE_ATK3 :: StateName
pattern S_VILE_ATK3 = StateName 257

pattern S_VILE_ATK4 :: StateName
pattern S_VILE_ATK4 = StateName 258

pattern S_VILE_ATK5 :: StateName
pattern S_VILE_ATK5 = StateName 259

pattern S_VILE_ATK6 :: StateName
pattern S_VILE_ATK6 = StateName 260

pattern S_VILE_ATK7 :: StateName
pattern S_VILE_ATK7 = StateName 261

pattern S_VILE_ATK8 :: StateName
pattern S_VILE_ATK8 = StateName 262

pattern S_VILE_ATK9 :: StateName
pattern S_VILE_ATK9 = StateName 263

pattern S_VILE_ATK10 :: StateName
pattern S_VILE_ATK10 = StateName 264

pattern S_VILE_ATK11 :: StateName
pattern S_VILE_ATK11 = StateName 265

pattern S_VILE_HEAL1 :: StateName
pattern S_VILE_HEAL1 = StateName 266

pattern S_VILE_HEAL2 :: StateName
pattern S_VILE_HEAL2 = StateName 267

pattern S_VILE_HEAL3 :: StateName
pattern S_VILE_HEAL3 = StateName 268

pattern S_VILE_PAIN :: StateName
pattern S_VILE_PAIN = StateName 269

pattern S_VILE_PAIN2 :: StateName
pattern S_VILE_PAIN2 = StateName 270

pattern S_VILE_DIE1 :: StateName
pattern S_VILE_DIE1 = StateName 271

pattern S_VILE_DIE2 :: StateName
pattern S_VILE_DIE2 = StateName 272

pattern S_VILE_DIE3 :: StateName
pattern S_VILE_DIE3 = StateName 273

pattern S_VILE_DIE4 :: StateName
pattern S_VILE_DIE4 = StateName 274

pattern S_VILE_DIE5 :: StateName
pattern S_VILE_DIE5 = StateName 275

pattern S_VILE_DIE6 :: StateName
pattern S_VILE_DIE6 = StateName 276

pattern S_VILE_DIE7 :: StateName
pattern S_VILE_DIE7 = StateName 277

pattern S_VILE_DIE8 :: StateName
pattern S_VILE_DIE8 = StateName 278

pattern S_VILE_DIE9 :: StateName
pattern S_VILE_DIE9 = StateName 279

pattern S_VILE_DIE10 :: StateName
pattern S_VILE_DIE10 = StateName 280

pattern S_FIRE1 :: StateName
pattern S_FIRE1 = StateName 281

pattern S_FIRE2 :: StateName
pattern S_FIRE2 = StateName 282

pattern S_FIRE3 :: StateName
pattern S_FIRE3 = StateName 283

pattern S_FIRE4 :: StateName
pattern S_FIRE4 = StateName 284

pattern S_FIRE5 :: StateName
pattern S_FIRE5 = StateName 285

pattern S_FIRE6 :: StateName
pattern S_FIRE6 = StateName 286

pattern S_FIRE7 :: StateName
pattern S_FIRE7 = StateName 287

pattern S_FIRE8 :: StateName
pattern S_FIRE8 = StateName 288

pattern S_FIRE9 :: StateName
pattern S_FIRE9 = StateName 289

pattern S_FIRE10 :: StateName
pattern S_FIRE10 = StateName 290

pattern S_FIRE11 :: StateName
pattern S_FIRE11 = StateName 291

pattern S_FIRE12 :: StateName
pattern S_FIRE12 = StateName 292

pattern S_FIRE13 :: StateName
pattern S_FIRE13 = StateName 293

pattern S_FIRE14 :: StateName
pattern S_FIRE14 = StateName 294

pattern S_FIRE15 :: StateName
pattern S_FIRE15 = StateName 295

pattern S_FIRE16 :: StateName
pattern S_FIRE16 = StateName 296

pattern S_FIRE17 :: StateName
pattern S_FIRE17 = StateName 297

pattern S_FIRE18 :: StateName
pattern S_FIRE18 = StateName 298

pattern S_FIRE19 :: StateName
pattern S_FIRE19 = StateName 299

pattern S_FIRE20 :: StateName
pattern S_FIRE20 = StateName 300

pattern S_FIRE21 :: StateName
pattern S_FIRE21 = StateName 301

pattern S_FIRE22 :: StateName
pattern S_FIRE22 = StateName 302

pattern S_FIRE23 :: StateName
pattern S_FIRE23 = StateName 303

pattern S_FIRE24 :: StateName
pattern S_FIRE24 = StateName 304

pattern S_FIRE25 :: StateName
pattern S_FIRE25 = StateName 305

pattern S_FIRE26 :: StateName
pattern S_FIRE26 = StateName 306

pattern S_FIRE27 :: StateName
pattern S_FIRE27 = StateName 307

pattern S_FIRE28 :: StateName
pattern S_FIRE28 = StateName 308

pattern S_FIRE29 :: StateName
pattern S_FIRE29 = StateName 309

pattern S_FIRE30 :: StateName
pattern S_FIRE30 = StateName 310

pattern S_SMOKE1 :: StateName
pattern S_SMOKE1 = StateName 311

pattern S_SMOKE2 :: StateName
pattern S_SMOKE2 = StateName 312

pattern S_SMOKE3 :: StateName
pattern S_SMOKE3 = StateName 313

pattern S_SMOKE4 :: StateName
pattern S_SMOKE4 = StateName 314

pattern S_SMOKE5 :: StateName
pattern S_SMOKE5 = StateName 315

pattern S_TRACER :: StateName
pattern S_TRACER = StateName 316

pattern S_TRACER2 :: StateName
pattern S_TRACER2 = StateName 317

pattern S_TRACEEXP1 :: StateName
pattern S_TRACEEXP1 = StateName 318

pattern S_TRACEEXP2 :: StateName
pattern S_TRACEEXP2 = StateName 319

pattern S_TRACEEXP3 :: StateName
pattern S_TRACEEXP3 = StateName 320

pattern S_SKEL_STND :: StateName
pattern S_SKEL_STND = StateName 321

pattern S_SKEL_STND2 :: StateName
pattern S_SKEL_STND2 = StateName 322

pattern S_SKEL_RUN1 :: StateName
pattern S_SKEL_RUN1 = StateName 323

pattern S_SKEL_RUN2 :: StateName
pattern S_SKEL_RUN2 = StateName 324

pattern S_SKEL_RUN3 :: StateName
pattern S_SKEL_RUN3 = StateName 325

pattern S_SKEL_RUN4 :: StateName
pattern S_SKEL_RUN4 = StateName 326

pattern S_SKEL_RUN5 :: StateName
pattern S_SKEL_RUN5 = StateName 327

pattern S_SKEL_RUN6 :: StateName
pattern S_SKEL_RUN6 = StateName 328

pattern S_SKEL_RUN7 :: StateName
pattern S_SKEL_RUN7 = StateName 329

pattern S_SKEL_RUN8 :: StateName
pattern S_SKEL_RUN8 = StateName 330

pattern S_SKEL_RUN9 :: StateName
pattern S_SKEL_RUN9 = StateName 331

pattern S_SKEL_RUN10 :: StateName
pattern S_SKEL_RUN10 = StateName 332

pattern S_SKEL_RUN11 :: StateName
pattern S_SKEL_RUN11 = StateName 333

pattern S_SKEL_RUN12 :: StateName
pattern S_SKEL_RUN12 = StateName 334

pattern S_SKEL_FIST1 :: StateName
pattern S_SKEL_FIST1 = StateName 335

pattern S_SKEL_FIST2 :: StateName
pattern S_SKEL_FIST2 = StateName 336

pattern S_SKEL_FIST3 :: StateName
pattern S_SKEL_FIST3 = StateName 337

pattern S_SKEL_FIST4 :: StateName
pattern S_SKEL_FIST4 = StateName 338

pattern S_SKEL_MISS1 :: StateName
pattern S_SKEL_MISS1 = StateName 339

pattern S_SKEL_MISS2 :: StateName
pattern S_SKEL_MISS2 = StateName 340

pattern S_SKEL_MISS3 :: StateName
pattern S_SKEL_MISS3 = StateName 341

pattern S_SKEL_MISS4 :: StateName
pattern S_SKEL_MISS4 = StateName 342

pattern S_SKEL_PAIN :: StateName
pattern S_SKEL_PAIN = StateName 343

pattern S_SKEL_PAIN2 :: StateName
pattern S_SKEL_PAIN2 = StateName 344

pattern S_SKEL_DIE1 :: StateName
pattern S_SKEL_DIE1 = StateName 345

pattern S_SKEL_DIE2 :: StateName
pattern S_SKEL_DIE2 = StateName 346

pattern S_SKEL_DIE3 :: StateName
pattern S_SKEL_DIE3 = StateName 347

pattern S_SKEL_DIE4 :: StateName
pattern S_SKEL_DIE4 = StateName 348

pattern S_SKEL_DIE5 :: StateName
pattern S_SKEL_DIE5 = StateName 349

pattern S_SKEL_DIE6 :: StateName
pattern S_SKEL_DIE6 = StateName 350

pattern S_SKEL_RAISE1 :: StateName
pattern S_SKEL_RAISE1 = StateName 351

pattern S_SKEL_RAISE2 :: StateName
pattern S_SKEL_RAISE2 = StateName 352

pattern S_SKEL_RAISE3 :: StateName
pattern S_SKEL_RAISE3 = StateName 353

pattern S_SKEL_RAISE4 :: StateName
pattern S_SKEL_RAISE4 = StateName 354

pattern S_SKEL_RAISE5 :: StateName
pattern S_SKEL_RAISE5 = StateName 355

pattern S_SKEL_RAISE6 :: StateName
pattern S_SKEL_RAISE6 = StateName 356

pattern S_FATSHOT1 :: StateName
pattern S_FATSHOT1 = StateName 357

pattern S_FATSHOT2 :: StateName
pattern S_FATSHOT2 = StateName 358

pattern S_FATSHOTX1 :: StateName
pattern S_FATSHOTX1 = StateName 359

pattern S_FATSHOTX2 :: StateName
pattern S_FATSHOTX2 = StateName 360

pattern S_FATSHOTX3 :: StateName
pattern S_FATSHOTX3 = StateName 361

pattern S_FATT_STND :: StateName
pattern S_FATT_STND = StateName 362

pattern S_FATT_STND2 :: StateName
pattern S_FATT_STND2 = StateName 363

pattern S_FATT_RUN1 :: StateName
pattern S_FATT_RUN1 = StateName 364

pattern S_FATT_RUN2 :: StateName
pattern S_FATT_RUN2 = StateName 365

pattern S_FATT_RUN3 :: StateName
pattern S_FATT_RUN3 = StateName 366

pattern S_FATT_RUN4 :: StateName
pattern S_FATT_RUN4 = StateName 367

pattern S_FATT_RUN5 :: StateName
pattern S_FATT_RUN5 = StateName 368

pattern S_FATT_RUN6 :: StateName
pattern S_FATT_RUN6 = StateName 369

pattern S_FATT_RUN7 :: StateName
pattern S_FATT_RUN7 = StateName 370

pattern S_FATT_RUN8 :: StateName
pattern S_FATT_RUN8 = StateName 371

pattern S_FATT_RUN9 :: StateName
pattern S_FATT_RUN9 = StateName 372

pattern S_FATT_RUN10 :: StateName
pattern S_FATT_RUN10 = StateName 373

pattern S_FATT_RUN11 :: StateName
pattern S_FATT_RUN11 = StateName 374

pattern S_FATT_RUN12 :: StateName
pattern S_FATT_RUN12 = StateName 375

pattern S_FATT_ATK1 :: StateName
pattern S_FATT_ATK1 = StateName 376

pattern S_FATT_ATK2 :: StateName
pattern S_FATT_ATK2 = StateName 377

pattern S_FATT_ATK3 :: StateName
pattern S_FATT_ATK3 = StateName 378

pattern S_FATT_ATK4 :: StateName
pattern S_FATT_ATK4 = StateName 379

pattern S_FATT_ATK5 :: StateName
pattern S_FATT_ATK5 = StateName 380

pattern S_FATT_ATK6 :: StateName
pattern S_FATT_ATK6 = StateName 381

pattern S_FATT_ATK7 :: StateName
pattern S_FATT_ATK7 = StateName 382

pattern S_FATT_ATK8 :: StateName
pattern S_FATT_ATK8 = StateName 383

pattern S_FATT_ATK9 :: StateName
pattern S_FATT_ATK9 = StateName 384

pattern S_FATT_ATK10 :: StateName
pattern S_FATT_ATK10 = StateName 385

pattern S_FATT_PAIN :: StateName
pattern S_FATT_PAIN = StateName 386

pattern S_FATT_PAIN2 :: StateName
pattern S_FATT_PAIN2 = StateName 387

pattern S_FATT_DIE1 :: StateName
pattern S_FATT_DIE1 = StateName 388

pattern S_FATT_DIE2 :: StateName
pattern S_FATT_DIE2 = StateName 389

pattern S_FATT_DIE3 :: StateName
pattern S_FATT_DIE3 = StateName 390

pattern S_FATT_DIE4 :: StateName
pattern S_FATT_DIE4 = StateName 391

pattern S_FATT_DIE5 :: StateName
pattern S_FATT_DIE5 = StateName 392

pattern S_FATT_DIE6 :: StateName
pattern S_FATT_DIE6 = StateName 393

pattern S_FATT_DIE7 :: StateName
pattern S_FATT_DIE7 = StateName 394

pattern S_FATT_DIE8 :: StateName
pattern S_FATT_DIE8 = StateName 395

pattern S_FATT_DIE9 :: StateName
pattern S_FATT_DIE9 = StateName 396

pattern S_FATT_DIE10 :: StateName
pattern S_FATT_DIE10 = StateName 397

pattern S_FATT_RAISE1 :: StateName
pattern S_FATT_RAISE1 = StateName 398

pattern S_FATT_RAISE2 :: StateName
pattern S_FATT_RAISE2 = StateName 399

pattern S_FATT_RAISE3 :: StateName
pattern S_FATT_RAISE3 = StateName 400

pattern S_FATT_RAISE4 :: StateName
pattern S_FATT_RAISE4 = StateName 401

pattern S_FATT_RAISE5 :: StateName
pattern S_FATT_RAISE5 = StateName 402

pattern S_FATT_RAISE6 :: StateName
pattern S_FATT_RAISE6 = StateName 403

pattern S_FATT_RAISE7 :: StateName
pattern S_FATT_RAISE7 = StateName 404

pattern S_FATT_RAISE8 :: StateName
pattern S_FATT_RAISE8 = StateName 405

pattern S_CPOS_STND :: StateName
pattern S_CPOS_STND = StateName 406

pattern S_CPOS_STND2 :: StateName
pattern S_CPOS_STND2 = StateName 407

pattern S_CPOS_RUN1 :: StateName
pattern S_CPOS_RUN1 = StateName 408

pattern S_CPOS_RUN2 :: StateName
pattern S_CPOS_RUN2 = StateName 409

pattern S_CPOS_RUN3 :: StateName
pattern S_CPOS_RUN3 = StateName 410

pattern S_CPOS_RUN4 :: StateName
pattern S_CPOS_RUN4 = StateName 411

pattern S_CPOS_RUN5 :: StateName
pattern S_CPOS_RUN5 = StateName 412

pattern S_CPOS_RUN6 :: StateName
pattern S_CPOS_RUN6 = StateName 413

pattern S_CPOS_RUN7 :: StateName
pattern S_CPOS_RUN7 = StateName 414

pattern S_CPOS_RUN8 :: StateName
pattern S_CPOS_RUN8 = StateName 415

pattern S_CPOS_ATK1 :: StateName
pattern S_CPOS_ATK1 = StateName 416

pattern S_CPOS_ATK2 :: StateName
pattern S_CPOS_ATK2 = StateName 417

pattern S_CPOS_ATK3 :: StateName
pattern S_CPOS_ATK3 = StateName 418

pattern S_CPOS_ATK4 :: StateName
pattern S_CPOS_ATK4 = StateName 419

pattern S_CPOS_PAIN :: StateName
pattern S_CPOS_PAIN = StateName 420

pattern S_CPOS_PAIN2 :: StateName
pattern S_CPOS_PAIN2 = StateName 421

pattern S_CPOS_DIE1 :: StateName
pattern S_CPOS_DIE1 = StateName 422

pattern S_CPOS_DIE2 :: StateName
pattern S_CPOS_DIE2 = StateName 423

pattern S_CPOS_DIE3 :: StateName
pattern S_CPOS_DIE3 = StateName 424

pattern S_CPOS_DIE4 :: StateName
pattern S_CPOS_DIE4 = StateName 425

pattern S_CPOS_DIE5 :: StateName
pattern S_CPOS_DIE5 = StateName 426

pattern S_CPOS_DIE6 :: StateName
pattern S_CPOS_DIE6 = StateName 427

pattern S_CPOS_DIE7 :: StateName
pattern S_CPOS_DIE7 = StateName 428

pattern S_CPOS_XDIE1 :: StateName
pattern S_CPOS_XDIE1 = StateName 429

pattern S_CPOS_XDIE2 :: StateName
pattern S_CPOS_XDIE2 = StateName 430

pattern S_CPOS_XDIE3 :: StateName
pattern S_CPOS_XDIE3 = StateName 431

pattern S_CPOS_XDIE4 :: StateName
pattern S_CPOS_XDIE4 = StateName 432

pattern S_CPOS_XDIE5 :: StateName
pattern S_CPOS_XDIE5 = StateName 433

pattern S_CPOS_XDIE6 :: StateName
pattern S_CPOS_XDIE6 = StateName 434

pattern S_CPOS_RAISE1 :: StateName
pattern S_CPOS_RAISE1 = StateName 435

pattern S_CPOS_RAISE2 :: StateName
pattern S_CPOS_RAISE2 = StateName 436

pattern S_CPOS_RAISE3 :: StateName
pattern S_CPOS_RAISE3 = StateName 437

pattern S_CPOS_RAISE4 :: StateName
pattern S_CPOS_RAISE4 = StateName 438

pattern S_CPOS_RAISE5 :: StateName
pattern S_CPOS_RAISE5 = StateName 439

pattern S_CPOS_RAISE6 :: StateName
pattern S_CPOS_RAISE6 = StateName 440

pattern S_CPOS_RAISE7 :: StateName
pattern S_CPOS_RAISE7 = StateName 441

pattern S_TROO_STND :: StateName
pattern S_TROO_STND = StateName 442

pattern S_TROO_STND2 :: StateName
pattern S_TROO_STND2 = StateName 443

pattern S_TROO_RUN1 :: StateName
pattern S_TROO_RUN1 = StateName 444

pattern S_TROO_RUN2 :: StateName
pattern S_TROO_RUN2 = StateName 445

pattern S_TROO_RUN3 :: StateName
pattern S_TROO_RUN3 = StateName 446

pattern S_TROO_RUN4 :: StateName
pattern S_TROO_RUN4 = StateName 447

pattern S_TROO_RUN5 :: StateName
pattern S_TROO_RUN5 = StateName 448

pattern S_TROO_RUN6 :: StateName
pattern S_TROO_RUN6 = StateName 449

pattern S_TROO_RUN7 :: StateName
pattern S_TROO_RUN7 = StateName 450

pattern S_TROO_RUN8 :: StateName
pattern S_TROO_RUN8 = StateName 451

pattern S_TROO_ATK1 :: StateName
pattern S_TROO_ATK1 = StateName 452

pattern S_TROO_ATK2 :: StateName
pattern S_TROO_ATK2 = StateName 453

pattern S_TROO_ATK3 :: StateName
pattern S_TROO_ATK3 = StateName 454

pattern S_TROO_PAIN :: StateName
pattern S_TROO_PAIN = StateName 455

pattern S_TROO_PAIN2 :: StateName
pattern S_TROO_PAIN2 = StateName 456

pattern S_TROO_DIE1 :: StateName
pattern S_TROO_DIE1 = StateName 457

pattern S_TROO_DIE2 :: StateName
pattern S_TROO_DIE2 = StateName 458

pattern S_TROO_DIE3 :: StateName
pattern S_TROO_DIE3 = StateName 459

pattern S_TROO_DIE4 :: StateName
pattern S_TROO_DIE4 = StateName 460

pattern S_TROO_DIE5 :: StateName
pattern S_TROO_DIE5 = StateName 461

pattern S_TROO_XDIE1 :: StateName
pattern S_TROO_XDIE1 = StateName 462

pattern S_TROO_XDIE2 :: StateName
pattern S_TROO_XDIE2 = StateName 463

pattern S_TROO_XDIE3 :: StateName
pattern S_TROO_XDIE3 = StateName 464

pattern S_TROO_XDIE4 :: StateName
pattern S_TROO_XDIE4 = StateName 465

pattern S_TROO_XDIE5 :: StateName
pattern S_TROO_XDIE5 = StateName 466

pattern S_TROO_XDIE6 :: StateName
pattern S_TROO_XDIE6 = StateName 467

pattern S_TROO_XDIE7 :: StateName
pattern S_TROO_XDIE7 = StateName 468

pattern S_TROO_XDIE8 :: StateName
pattern S_TROO_XDIE8 = StateName 469

pattern S_TROO_RAISE1 :: StateName
pattern S_TROO_RAISE1 = StateName 470

pattern S_TROO_RAISE2 :: StateName
pattern S_TROO_RAISE2 = StateName 471

pattern S_TROO_RAISE3 :: StateName
pattern S_TROO_RAISE3 = StateName 472

pattern S_TROO_RAISE4 :: StateName
pattern S_TROO_RAISE4 = StateName 473

pattern S_TROO_RAISE5 :: StateName
pattern S_TROO_RAISE5 = StateName 474

pattern S_SARG_STND :: StateName
pattern S_SARG_STND = StateName 475

pattern S_SARG_STND2 :: StateName
pattern S_SARG_STND2 = StateName 476

pattern S_SARG_RUN1 :: StateName
pattern S_SARG_RUN1 = StateName 477

pattern S_SARG_RUN2 :: StateName
pattern S_SARG_RUN2 = StateName 478

pattern S_SARG_RUN3 :: StateName
pattern S_SARG_RUN3 = StateName 479

pattern S_SARG_RUN4 :: StateName
pattern S_SARG_RUN4 = StateName 480

pattern S_SARG_RUN5 :: StateName
pattern S_SARG_RUN5 = StateName 481

pattern S_SARG_RUN6 :: StateName
pattern S_SARG_RUN6 = StateName 482

pattern S_SARG_RUN7 :: StateName
pattern S_SARG_RUN7 = StateName 483

pattern S_SARG_RUN8 :: StateName
pattern S_SARG_RUN8 = StateName 484

pattern S_SARG_ATK1 :: StateName
pattern S_SARG_ATK1 = StateName 485

pattern S_SARG_ATK2 :: StateName
pattern S_SARG_ATK2 = StateName 486

pattern S_SARG_ATK3 :: StateName
pattern S_SARG_ATK3 = StateName 487

pattern S_SARG_PAIN :: StateName
pattern S_SARG_PAIN = StateName 488

pattern S_SARG_PAIN2 :: StateName
pattern S_SARG_PAIN2 = StateName 489

pattern S_SARG_DIE1 :: StateName
pattern S_SARG_DIE1 = StateName 490

pattern S_SARG_DIE2 :: StateName
pattern S_SARG_DIE2 = StateName 491

pattern S_SARG_DIE3 :: StateName
pattern S_SARG_DIE3 = StateName 492

pattern S_SARG_DIE4 :: StateName
pattern S_SARG_DIE4 = StateName 493

pattern S_SARG_DIE5 :: StateName
pattern S_SARG_DIE5 = StateName 494

pattern S_SARG_DIE6 :: StateName
pattern S_SARG_DIE6 = StateName 495

pattern S_SARG_RAISE1 :: StateName
pattern S_SARG_RAISE1 = StateName 496

pattern S_SARG_RAISE2 :: StateName
pattern S_SARG_RAISE2 = StateName 497

pattern S_SARG_RAISE3 :: StateName
pattern S_SARG_RAISE3 = StateName 498

pattern S_SARG_RAISE4 :: StateName
pattern S_SARG_RAISE4 = StateName 499

pattern S_SARG_RAISE5 :: StateName
pattern S_SARG_RAISE5 = StateName 500

pattern S_SARG_RAISE6 :: StateName
pattern S_SARG_RAISE6 = StateName 501

pattern S_HEAD_STND :: StateName
pattern S_HEAD_STND = StateName 502

pattern S_HEAD_RUN1 :: StateName
pattern S_HEAD_RUN1 = StateName 503

pattern S_HEAD_ATK1 :: StateName
pattern S_HEAD_ATK1 = StateName 504

pattern S_HEAD_ATK2 :: StateName
pattern S_HEAD_ATK2 = StateName 505

pattern S_HEAD_ATK3 :: StateName
pattern S_HEAD_ATK3 = StateName 506

pattern S_HEAD_PAIN :: StateName
pattern S_HEAD_PAIN = StateName 507

pattern S_HEAD_PAIN2 :: StateName
pattern S_HEAD_PAIN2 = StateName 508

pattern S_HEAD_PAIN3 :: StateName
pattern S_HEAD_PAIN3 = StateName 509

pattern S_HEAD_DIE1 :: StateName
pattern S_HEAD_DIE1 = StateName 510

pattern S_HEAD_DIE2 :: StateName
pattern S_HEAD_DIE2 = StateName 511

pattern S_HEAD_DIE3 :: StateName
pattern S_HEAD_DIE3 = StateName 512

pattern S_HEAD_DIE4 :: StateName
pattern S_HEAD_DIE4 = StateName 513

pattern S_HEAD_DIE5 :: StateName
pattern S_HEAD_DIE5 = StateName 514

pattern S_HEAD_DIE6 :: StateName
pattern S_HEAD_DIE6 = StateName 515

pattern S_HEAD_RAISE1 :: StateName
pattern S_HEAD_RAISE1 = StateName 516

pattern S_HEAD_RAISE2 :: StateName
pattern S_HEAD_RAISE2 = StateName 517

pattern S_HEAD_RAISE3 :: StateName
pattern S_HEAD_RAISE3 = StateName 518

pattern S_HEAD_RAISE4 :: StateName
pattern S_HEAD_RAISE4 = StateName 519

pattern S_HEAD_RAISE5 :: StateName
pattern S_HEAD_RAISE5 = StateName 520

pattern S_HEAD_RAISE6 :: StateName
pattern S_HEAD_RAISE6 = StateName 521

pattern S_BRBALL1 :: StateName
pattern S_BRBALL1 = StateName 522

pattern S_BRBALL2 :: StateName
pattern S_BRBALL2 = StateName 523

pattern S_BRBALLX1 :: StateName
pattern S_BRBALLX1 = StateName 524

pattern S_BRBALLX2 :: StateName
pattern S_BRBALLX2 = StateName 525

pattern S_BRBALLX3 :: StateName
pattern S_BRBALLX3 = StateName 526

pattern S_BOSS_STND :: StateName
pattern S_BOSS_STND = StateName 527

pattern S_BOSS_STND2 :: StateName
pattern S_BOSS_STND2 = StateName 528

pattern S_BOSS_RUN1 :: StateName
pattern S_BOSS_RUN1 = StateName 529

pattern S_BOSS_RUN2 :: StateName
pattern S_BOSS_RUN2 = StateName 530

pattern S_BOSS_RUN3 :: StateName
pattern S_BOSS_RUN3 = StateName 531

pattern S_BOSS_RUN4 :: StateName
pattern S_BOSS_RUN4 = StateName 532

pattern S_BOSS_RUN5 :: StateName
pattern S_BOSS_RUN5 = StateName 533

pattern S_BOSS_RUN6 :: StateName
pattern S_BOSS_RUN6 = StateName 534

pattern S_BOSS_RUN7 :: StateName
pattern S_BOSS_RUN7 = StateName 535

pattern S_BOSS_RUN8 :: StateName
pattern S_BOSS_RUN8 = StateName 536

pattern S_BOSS_ATK1 :: StateName
pattern S_BOSS_ATK1 = StateName 537

pattern S_BOSS_ATK2 :: StateName
pattern S_BOSS_ATK2 = StateName 538

pattern S_BOSS_ATK3 :: StateName
pattern S_BOSS_ATK3 = StateName 539

pattern S_BOSS_PAIN :: StateName
pattern S_BOSS_PAIN = StateName 540

pattern S_BOSS_PAIN2 :: StateName
pattern S_BOSS_PAIN2 = StateName 541

pattern S_BOSS_DIE1 :: StateName
pattern S_BOSS_DIE1 = StateName 542

pattern S_BOSS_DIE2 :: StateName
pattern S_BOSS_DIE2 = StateName 543

pattern S_BOSS_DIE3 :: StateName
pattern S_BOSS_DIE3 = StateName 544

pattern S_BOSS_DIE4 :: StateName
pattern S_BOSS_DIE4 = StateName 545

pattern S_BOSS_DIE5 :: StateName
pattern S_BOSS_DIE5 = StateName 546

pattern S_BOSS_DIE6 :: StateName
pattern S_BOSS_DIE6 = StateName 547

pattern S_BOSS_DIE7 :: StateName
pattern S_BOSS_DIE7 = StateName 548

pattern S_BOSS_RAISE1 :: StateName
pattern S_BOSS_RAISE1 = StateName 549

pattern S_BOSS_RAISE2 :: StateName
pattern S_BOSS_RAISE2 = StateName 550

pattern S_BOSS_RAISE3 :: StateName
pattern S_BOSS_RAISE3 = StateName 551

pattern S_BOSS_RAISE4 :: StateName
pattern S_BOSS_RAISE4 = StateName 552

pattern S_BOSS_RAISE5 :: StateName
pattern S_BOSS_RAISE5 = StateName 553

pattern S_BOSS_RAISE6 :: StateName
pattern S_BOSS_RAISE6 = StateName 554

pattern S_BOSS_RAISE7 :: StateName
pattern S_BOSS_RAISE7 = StateName 555

pattern S_BOS2_STND :: StateName
pattern S_BOS2_STND = StateName 556

pattern S_BOS2_STND2 :: StateName
pattern S_BOS2_STND2 = StateName 557

pattern S_BOS2_RUN1 :: StateName
pattern S_BOS2_RUN1 = StateName 558

pattern S_BOS2_RUN2 :: StateName
pattern S_BOS2_RUN2 = StateName 559

pattern S_BOS2_RUN3 :: StateName
pattern S_BOS2_RUN3 = StateName 560

pattern S_BOS2_RUN4 :: StateName
pattern S_BOS2_RUN4 = StateName 561

pattern S_BOS2_RUN5 :: StateName
pattern S_BOS2_RUN5 = StateName 562

pattern S_BOS2_RUN6 :: StateName
pattern S_BOS2_RUN6 = StateName 563

pattern S_BOS2_RUN7 :: StateName
pattern S_BOS2_RUN7 = StateName 564

pattern S_BOS2_RUN8 :: StateName
pattern S_BOS2_RUN8 = StateName 565

pattern S_BOS2_ATK1 :: StateName
pattern S_BOS2_ATK1 = StateName 566

pattern S_BOS2_ATK2 :: StateName
pattern S_BOS2_ATK2 = StateName 567

pattern S_BOS2_ATK3 :: StateName
pattern S_BOS2_ATK3 = StateName 568

pattern S_BOS2_PAIN :: StateName
pattern S_BOS2_PAIN = StateName 569

pattern S_BOS2_PAIN2 :: StateName
pattern S_BOS2_PAIN2 = StateName 570

pattern S_BOS2_DIE1 :: StateName
pattern S_BOS2_DIE1 = StateName 571

pattern S_BOS2_DIE2 :: StateName
pattern S_BOS2_DIE2 = StateName 572

pattern S_BOS2_DIE3 :: StateName
pattern S_BOS2_DIE3 = StateName 573

pattern S_BOS2_DIE4 :: StateName
pattern S_BOS2_DIE4 = StateName 574

pattern S_BOS2_DIE5 :: StateName
pattern S_BOS2_DIE5 = StateName 575

pattern S_BOS2_DIE6 :: StateName
pattern S_BOS2_DIE6 = StateName 576

pattern S_BOS2_DIE7 :: StateName
pattern S_BOS2_DIE7 = StateName 577

pattern S_BOS2_RAISE1 :: StateName
pattern S_BOS2_RAISE1 = StateName 578

pattern S_BOS2_RAISE2 :: StateName
pattern S_BOS2_RAISE2 = StateName 579

pattern S_BOS2_RAISE3 :: StateName
pattern S_BOS2_RAISE3 = StateName 580

pattern S_BOS2_RAISE4 :: StateName
pattern S_BOS2_RAISE4 = StateName 581

pattern S_BOS2_RAISE5 :: StateName
pattern S_BOS2_RAISE5 = StateName 582

pattern S_BOS2_RAISE6 :: StateName
pattern S_BOS2_RAISE6 = StateName 583

pattern S_BOS2_RAISE7 :: StateName
pattern S_BOS2_RAISE7 = StateName 584

pattern S_SKULL_STND :: StateName
pattern S_SKULL_STND = StateName 585

pattern S_SKULL_STND2 :: StateName
pattern S_SKULL_STND2 = StateName 586

pattern S_SKULL_RUN1 :: StateName
pattern S_SKULL_RUN1 = StateName 587

pattern S_SKULL_RUN2 :: StateName
pattern S_SKULL_RUN2 = StateName 588

pattern S_SKULL_ATK1 :: StateName
pattern S_SKULL_ATK1 = StateName 589

pattern S_SKULL_ATK2 :: StateName
pattern S_SKULL_ATK2 = StateName 590

pattern S_SKULL_ATK3 :: StateName
pattern S_SKULL_ATK3 = StateName 591

pattern S_SKULL_ATK4 :: StateName
pattern S_SKULL_ATK4 = StateName 592

pattern S_SKULL_PAIN :: StateName
pattern S_SKULL_PAIN = StateName 593

pattern S_SKULL_PAIN2 :: StateName
pattern S_SKULL_PAIN2 = StateName 594

pattern S_SKULL_DIE1 :: StateName
pattern S_SKULL_DIE1 = StateName 595

pattern S_SKULL_DIE2 :: StateName
pattern S_SKULL_DIE2 = StateName 596

pattern S_SKULL_DIE3 :: StateName
pattern S_SKULL_DIE3 = StateName 597

pattern S_SKULL_DIE4 :: StateName
pattern S_SKULL_DIE4 = StateName 598

pattern S_SKULL_DIE5 :: StateName
pattern S_SKULL_DIE5 = StateName 599

pattern S_SKULL_DIE6 :: StateName
pattern S_SKULL_DIE6 = StateName 600

pattern S_SPID_STND :: StateName
pattern S_SPID_STND = StateName 601

pattern S_SPID_STND2 :: StateName
pattern S_SPID_STND2 = StateName 602

pattern S_SPID_RUN1 :: StateName
pattern S_SPID_RUN1 = StateName 603

pattern S_SPID_RUN2 :: StateName
pattern S_SPID_RUN2 = StateName 604

pattern S_SPID_RUN3 :: StateName
pattern S_SPID_RUN3 = StateName 605

pattern S_SPID_RUN4 :: StateName
pattern S_SPID_RUN4 = StateName 606

pattern S_SPID_RUN5 :: StateName
pattern S_SPID_RUN5 = StateName 607

pattern S_SPID_RUN6 :: StateName
pattern S_SPID_RUN6 = StateName 608

pattern S_SPID_RUN7 :: StateName
pattern S_SPID_RUN7 = StateName 609

pattern S_SPID_RUN8 :: StateName
pattern S_SPID_RUN8 = StateName 610

pattern S_SPID_RUN9 :: StateName
pattern S_SPID_RUN9 = StateName 611

pattern S_SPID_RUN10 :: StateName
pattern S_SPID_RUN10 = StateName 612

pattern S_SPID_RUN11 :: StateName
pattern S_SPID_RUN11 = StateName 613

pattern S_SPID_RUN12 :: StateName
pattern S_SPID_RUN12 = StateName 614

pattern S_SPID_ATK1 :: StateName
pattern S_SPID_ATK1 = StateName 615

pattern S_SPID_ATK2 :: StateName
pattern S_SPID_ATK2 = StateName 616

pattern S_SPID_ATK3 :: StateName
pattern S_SPID_ATK3 = StateName 617

pattern S_SPID_ATK4 :: StateName
pattern S_SPID_ATK4 = StateName 618

pattern S_SPID_PAIN :: StateName
pattern S_SPID_PAIN = StateName 619

pattern S_SPID_PAIN2 :: StateName
pattern S_SPID_PAIN2 = StateName 620

pattern S_SPID_DIE1 :: StateName
pattern S_SPID_DIE1 = StateName 621

pattern S_SPID_DIE2 :: StateName
pattern S_SPID_DIE2 = StateName 622

pattern S_SPID_DIE3 :: StateName
pattern S_SPID_DIE3 = StateName 623

pattern S_SPID_DIE4 :: StateName
pattern S_SPID_DIE4 = StateName 624

pattern S_SPID_DIE5 :: StateName
pattern S_SPID_DIE5 = StateName 625

pattern S_SPID_DIE6 :: StateName
pattern S_SPID_DIE6 = StateName 626

pattern S_SPID_DIE7 :: StateName
pattern S_SPID_DIE7 = StateName 627

pattern S_SPID_DIE8 :: StateName
pattern S_SPID_DIE8 = StateName 628

pattern S_SPID_DIE9 :: StateName
pattern S_SPID_DIE9 = StateName 629

pattern S_SPID_DIE10 :: StateName
pattern S_SPID_DIE10 = StateName 630

pattern S_SPID_DIE11 :: StateName
pattern S_SPID_DIE11 = StateName 631

pattern S_BSPI_STND :: StateName
pattern S_BSPI_STND = StateName 632

pattern S_BSPI_STND2 :: StateName
pattern S_BSPI_STND2 = StateName 633

pattern S_BSPI_SIGHT :: StateName
pattern S_BSPI_SIGHT = StateName 634

pattern S_BSPI_RUN1 :: StateName
pattern S_BSPI_RUN1 = StateName 635

pattern S_BSPI_RUN2 :: StateName
pattern S_BSPI_RUN2 = StateName 636

pattern S_BSPI_RUN3 :: StateName
pattern S_BSPI_RUN3 = StateName 637

pattern S_BSPI_RUN4 :: StateName
pattern S_BSPI_RUN4 = StateName 638

pattern S_BSPI_RUN5 :: StateName
pattern S_BSPI_RUN5 = StateName 639

pattern S_BSPI_RUN6 :: StateName
pattern S_BSPI_RUN6 = StateName 640

pattern S_BSPI_RUN7 :: StateName
pattern S_BSPI_RUN7 = StateName 641

pattern S_BSPI_RUN8 :: StateName
pattern S_BSPI_RUN8 = StateName 642

pattern S_BSPI_RUN9 :: StateName
pattern S_BSPI_RUN9 = StateName 643

pattern S_BSPI_RUN10 :: StateName
pattern S_BSPI_RUN10 = StateName 644

pattern S_BSPI_RUN11 :: StateName
pattern S_BSPI_RUN11 = StateName 645

pattern S_BSPI_RUN12 :: StateName
pattern S_BSPI_RUN12 = StateName 646

pattern S_BSPI_ATK1 :: StateName
pattern S_BSPI_ATK1 = StateName 647

pattern S_BSPI_ATK2 :: StateName
pattern S_BSPI_ATK2 = StateName 648

pattern S_BSPI_ATK3 :: StateName
pattern S_BSPI_ATK3 = StateName 649

pattern S_BSPI_ATK4 :: StateName
pattern S_BSPI_ATK4 = StateName 650

pattern S_BSPI_PAIN :: StateName
pattern S_BSPI_PAIN = StateName 651

pattern S_BSPI_PAIN2 :: StateName
pattern S_BSPI_PAIN2 = StateName 652

pattern S_BSPI_DIE1 :: StateName
pattern S_BSPI_DIE1 = StateName 653

pattern S_BSPI_DIE2 :: StateName
pattern S_BSPI_DIE2 = StateName 654

pattern S_BSPI_DIE3 :: StateName
pattern S_BSPI_DIE3 = StateName 655

pattern S_BSPI_DIE4 :: StateName
pattern S_BSPI_DIE4 = StateName 656

pattern S_BSPI_DIE5 :: StateName
pattern S_BSPI_DIE5 = StateName 657

pattern S_BSPI_DIE6 :: StateName
pattern S_BSPI_DIE6 = StateName 658

pattern S_BSPI_DIE7 :: StateName
pattern S_BSPI_DIE7 = StateName 659

pattern S_BSPI_RAISE1 :: StateName
pattern S_BSPI_RAISE1 = StateName 660

pattern S_BSPI_RAISE2 :: StateName
pattern S_BSPI_RAISE2 = StateName 661

pattern S_BSPI_RAISE3 :: StateName
pattern S_BSPI_RAISE3 = StateName 662

pattern S_BSPI_RAISE4 :: StateName
pattern S_BSPI_RAISE4 = StateName 663

pattern S_BSPI_RAISE5 :: StateName
pattern S_BSPI_RAISE5 = StateName 664

pattern S_BSPI_RAISE6 :: StateName
pattern S_BSPI_RAISE6 = StateName 665

pattern S_BSPI_RAISE7 :: StateName
pattern S_BSPI_RAISE7 = StateName 666

pattern S_ARACH_PLAZ :: StateName
pattern S_ARACH_PLAZ = StateName 667

pattern S_ARACH_PLAZ2 :: StateName
pattern S_ARACH_PLAZ2 = StateName 668

pattern S_ARACH_PLEX :: StateName
pattern S_ARACH_PLEX = StateName 669

pattern S_ARACH_PLEX2 :: StateName
pattern S_ARACH_PLEX2 = StateName 670

pattern S_ARACH_PLEX3 :: StateName
pattern S_ARACH_PLEX3 = StateName 671

pattern S_ARACH_PLEX4 :: StateName
pattern S_ARACH_PLEX4 = StateName 672

pattern S_ARACH_PLEX5 :: StateName
pattern S_ARACH_PLEX5 = StateName 673

pattern S_CYBER_STND :: StateName
pattern S_CYBER_STND = StateName 674

pattern S_CYBER_STND2 :: StateName
pattern S_CYBER_STND2 = StateName 675

pattern S_CYBER_RUN1 :: StateName
pattern S_CYBER_RUN1 = StateName 676

pattern S_CYBER_RUN2 :: StateName
pattern S_CYBER_RUN2 = StateName 677

pattern S_CYBER_RUN3 :: StateName
pattern S_CYBER_RUN3 = StateName 678

pattern S_CYBER_RUN4 :: StateName
pattern S_CYBER_RUN4 = StateName 679

pattern S_CYBER_RUN5 :: StateName
pattern S_CYBER_RUN5 = StateName 680

pattern S_CYBER_RUN6 :: StateName
pattern S_CYBER_RUN6 = StateName 681

pattern S_CYBER_RUN7 :: StateName
pattern S_CYBER_RUN7 = StateName 682

pattern S_CYBER_RUN8 :: StateName
pattern S_CYBER_RUN8 = StateName 683

pattern S_CYBER_ATK1 :: StateName
pattern S_CYBER_ATK1 = StateName 684

pattern S_CYBER_ATK2 :: StateName
pattern S_CYBER_ATK2 = StateName 685

pattern S_CYBER_ATK3 :: StateName
pattern S_CYBER_ATK3 = StateName 686

pattern S_CYBER_ATK4 :: StateName
pattern S_CYBER_ATK4 = StateName 687

pattern S_CYBER_ATK5 :: StateName
pattern S_CYBER_ATK5 = StateName 688

pattern S_CYBER_ATK6 :: StateName
pattern S_CYBER_ATK6 = StateName 689

pattern S_CYBER_PAIN :: StateName
pattern S_CYBER_PAIN = StateName 690

pattern S_CYBER_DIE1 :: StateName
pattern S_CYBER_DIE1 = StateName 691

pattern S_CYBER_DIE2 :: StateName
pattern S_CYBER_DIE2 = StateName 692

pattern S_CYBER_DIE3 :: StateName
pattern S_CYBER_DIE3 = StateName 693

pattern S_CYBER_DIE4 :: StateName
pattern S_CYBER_DIE4 = StateName 694

pattern S_CYBER_DIE5 :: StateName
pattern S_CYBER_DIE5 = StateName 695

pattern S_CYBER_DIE6 :: StateName
pattern S_CYBER_DIE6 = StateName 696

pattern S_CYBER_DIE7 :: StateName
pattern S_CYBER_DIE7 = StateName 697

pattern S_CYBER_DIE8 :: StateName
pattern S_CYBER_DIE8 = StateName 698

pattern S_CYBER_DIE9 :: StateName
pattern S_CYBER_DIE9 = StateName 699

pattern S_CYBER_DIE10 :: StateName
pattern S_CYBER_DIE10 = StateName 700

pattern S_PAIN_STND :: StateName
pattern S_PAIN_STND = StateName 701

pattern S_PAIN_RUN1 :: StateName
pattern S_PAIN_RUN1 = StateName 702

pattern S_PAIN_RUN2 :: StateName
pattern S_PAIN_RUN2 = StateName 703

pattern S_PAIN_RUN3 :: StateName
pattern S_PAIN_RUN3 = StateName 704

pattern S_PAIN_RUN4 :: StateName
pattern S_PAIN_RUN4 = StateName 705

pattern S_PAIN_RUN5 :: StateName
pattern S_PAIN_RUN5 = StateName 706

pattern S_PAIN_RUN6 :: StateName
pattern S_PAIN_RUN6 = StateName 707

pattern S_PAIN_ATK1 :: StateName
pattern S_PAIN_ATK1 = StateName 708

pattern S_PAIN_ATK2 :: StateName
pattern S_PAIN_ATK2 = StateName 709

pattern S_PAIN_ATK3 :: StateName
pattern S_PAIN_ATK3 = StateName 710

pattern S_PAIN_ATK4 :: StateName
pattern S_PAIN_ATK4 = StateName 711

pattern S_PAIN_PAIN :: StateName
pattern S_PAIN_PAIN = StateName 712

pattern S_PAIN_PAIN2 :: StateName
pattern S_PAIN_PAIN2 = StateName 713

pattern S_PAIN_DIE1 :: StateName
pattern S_PAIN_DIE1 = StateName 714

pattern S_PAIN_DIE2 :: StateName
pattern S_PAIN_DIE2 = StateName 715

pattern S_PAIN_DIE3 :: StateName
pattern S_PAIN_DIE3 = StateName 716

pattern S_PAIN_DIE4 :: StateName
pattern S_PAIN_DIE4 = StateName 717

pattern S_PAIN_DIE5 :: StateName
pattern S_PAIN_DIE5 = StateName 718

pattern S_PAIN_DIE6 :: StateName
pattern S_PAIN_DIE6 = StateName 719

pattern S_PAIN_RAISE1 :: StateName
pattern S_PAIN_RAISE1 = StateName 720

pattern S_PAIN_RAISE2 :: StateName
pattern S_PAIN_RAISE2 = StateName 721

pattern S_PAIN_RAISE3 :: StateName
pattern S_PAIN_RAISE3 = StateName 722

pattern S_PAIN_RAISE4 :: StateName
pattern S_PAIN_RAISE4 = StateName 723

pattern S_PAIN_RAISE5 :: StateName
pattern S_PAIN_RAISE5 = StateName 724

pattern S_PAIN_RAISE6 :: StateName
pattern S_PAIN_RAISE6 = StateName 725

pattern S_SSWV_STND :: StateName
pattern S_SSWV_STND = StateName 726

pattern S_SSWV_STND2 :: StateName
pattern S_SSWV_STND2 = StateName 727

pattern S_SSWV_RUN1 :: StateName
pattern S_SSWV_RUN1 = StateName 728

pattern S_SSWV_RUN2 :: StateName
pattern S_SSWV_RUN2 = StateName 729

pattern S_SSWV_RUN3 :: StateName
pattern S_SSWV_RUN3 = StateName 730

pattern S_SSWV_RUN4 :: StateName
pattern S_SSWV_RUN4 = StateName 731

pattern S_SSWV_RUN5 :: StateName
pattern S_SSWV_RUN5 = StateName 732

pattern S_SSWV_RUN6 :: StateName
pattern S_SSWV_RUN6 = StateName 733

pattern S_SSWV_RUN7 :: StateName
pattern S_SSWV_RUN7 = StateName 734

pattern S_SSWV_RUN8 :: StateName
pattern S_SSWV_RUN8 = StateName 735

pattern S_SSWV_ATK1 :: StateName
pattern S_SSWV_ATK1 = StateName 736

pattern S_SSWV_ATK2 :: StateName
pattern S_SSWV_ATK2 = StateName 737

pattern S_SSWV_ATK3 :: StateName
pattern S_SSWV_ATK3 = StateName 738

pattern S_SSWV_ATK4 :: StateName
pattern S_SSWV_ATK4 = StateName 739

pattern S_SSWV_ATK5 :: StateName
pattern S_SSWV_ATK5 = StateName 740

pattern S_SSWV_ATK6 :: StateName
pattern S_SSWV_ATK6 = StateName 741

pattern S_SSWV_PAIN :: StateName
pattern S_SSWV_PAIN = StateName 742

pattern S_SSWV_PAIN2 :: StateName
pattern S_SSWV_PAIN2 = StateName 743

pattern S_SSWV_DIE1 :: StateName
pattern S_SSWV_DIE1 = StateName 744

pattern S_SSWV_DIE2 :: StateName
pattern S_SSWV_DIE2 = StateName 745

pattern S_SSWV_DIE3 :: StateName
pattern S_SSWV_DIE3 = StateName 746

pattern S_SSWV_DIE4 :: StateName
pattern S_SSWV_DIE4 = StateName 747

pattern S_SSWV_DIE5 :: StateName
pattern S_SSWV_DIE5 = StateName 748

pattern S_SSWV_XDIE1 :: StateName
pattern S_SSWV_XDIE1 = StateName 749

pattern S_SSWV_XDIE2 :: StateName
pattern S_SSWV_XDIE2 = StateName 750

pattern S_SSWV_XDIE3 :: StateName
pattern S_SSWV_XDIE3 = StateName 751

pattern S_SSWV_XDIE4 :: StateName
pattern S_SSWV_XDIE4 = StateName 752

pattern S_SSWV_XDIE5 :: StateName
pattern S_SSWV_XDIE5 = StateName 753

pattern S_SSWV_XDIE6 :: StateName
pattern S_SSWV_XDIE6 = StateName 754

pattern S_SSWV_XDIE7 :: StateName
pattern S_SSWV_XDIE7 = StateName 755

pattern S_SSWV_XDIE8 :: StateName
pattern S_SSWV_XDIE8 = StateName 756

pattern S_SSWV_XDIE9 :: StateName
pattern S_SSWV_XDIE9 = StateName 757

pattern S_SSWV_RAISE1 :: StateName
pattern S_SSWV_RAISE1 = StateName 758

pattern S_SSWV_RAISE2 :: StateName
pattern S_SSWV_RAISE2 = StateName 759

pattern S_SSWV_RAISE3 :: StateName
pattern S_SSWV_RAISE3 = StateName 760

pattern S_SSWV_RAISE4 :: StateName
pattern S_SSWV_RAISE4 = StateName 761

pattern S_SSWV_RAISE5 :: StateName
pattern S_SSWV_RAISE5 = StateName 762

pattern S_KEENSTND :: StateName
pattern S_KEENSTND = StateName 763

pattern S_COMMKEEN :: StateName
pattern S_COMMKEEN = StateName 764

pattern S_COMMKEEN2 :: StateName
pattern S_COMMKEEN2 = StateName 765

pattern S_COMMKEEN3 :: StateName
pattern S_COMMKEEN3 = StateName 766

pattern S_COMMKEEN4 :: StateName
pattern S_COMMKEEN4 = StateName 767

pattern S_COMMKEEN5 :: StateName
pattern S_COMMKEEN5 = StateName 768

pattern S_COMMKEEN6 :: StateName
pattern S_COMMKEEN6 = StateName 769

pattern S_COMMKEEN7 :: StateName
pattern S_COMMKEEN7 = StateName 770

pattern S_COMMKEEN8 :: StateName
pattern S_COMMKEEN8 = StateName 771

pattern S_COMMKEEN9 :: StateName
pattern S_COMMKEEN9 = StateName 772

pattern S_COMMKEEN10 :: StateName
pattern S_COMMKEEN10 = StateName 773

pattern S_COMMKEEN11 :: StateName
pattern S_COMMKEEN11 = StateName 774

pattern S_COMMKEEN12 :: StateName
pattern S_COMMKEEN12 = StateName 775

pattern S_KEENPAIN :: StateName
pattern S_KEENPAIN = StateName 776

pattern S_KEENPAIN2 :: StateName
pattern S_KEENPAIN2 = StateName 777

pattern S_BRAIN :: StateName
pattern S_BRAIN = StateName 778

pattern S_BRAIN_PAIN :: StateName
pattern S_BRAIN_PAIN = StateName 779

pattern S_BRAIN_DIE1 :: StateName
pattern S_BRAIN_DIE1 = StateName 780

pattern S_BRAIN_DIE2 :: StateName
pattern S_BRAIN_DIE2 = StateName 781

pattern S_BRAIN_DIE3 :: StateName
pattern S_BRAIN_DIE3 = StateName 782

pattern S_BRAIN_DIE4 :: StateName
pattern S_BRAIN_DIE4 = StateName 783

pattern S_BRAINEYE :: StateName
pattern S_BRAINEYE = StateName 784

pattern S_BRAINEYESEE :: StateName
pattern S_BRAINEYESEE = StateName 785

pattern S_BRAINEYE1 :: StateName
pattern S_BRAINEYE1 = StateName 786

pattern S_SPAWN1 :: StateName
pattern S_SPAWN1 = StateName 787

pattern S_SPAWN2 :: StateName
pattern S_SPAWN2 = StateName 788

pattern S_SPAWN3 :: StateName
pattern S_SPAWN3 = StateName 789

pattern S_SPAWN4 :: StateName
pattern S_SPAWN4 = StateName 790

pattern S_SPAWNFIRE1 :: StateName
pattern S_SPAWNFIRE1 = StateName 791

pattern S_SPAWNFIRE2 :: StateName
pattern S_SPAWNFIRE2 = StateName 792

pattern S_SPAWNFIRE3 :: StateName
pattern S_SPAWNFIRE3 = StateName 793

pattern S_SPAWNFIRE4 :: StateName
pattern S_SPAWNFIRE4 = StateName 794

pattern S_SPAWNFIRE5 :: StateName
pattern S_SPAWNFIRE5 = StateName 795

pattern S_SPAWNFIRE6 :: StateName
pattern S_SPAWNFIRE6 = StateName 796

pattern S_SPAWNFIRE7 :: StateName
pattern S_SPAWNFIRE7 = StateName 797

pattern S_SPAWNFIRE8 :: StateName
pattern S_SPAWNFIRE8 = StateName 798

pattern S_BRAINEXPLODE1 :: StateName
pattern S_BRAINEXPLODE1 = StateName 799

pattern S_BRAINEXPLODE2 :: StateName
pattern S_BRAINEXPLODE2 = StateName 800

pattern S_BRAINEXPLODE3 :: StateName
pattern S_BRAINEXPLODE3 = StateName 801

pattern S_ARM1 :: StateName
pattern S_ARM1 = StateName 802

pattern S_ARM1A :: StateName
pattern S_ARM1A = StateName 803

pattern S_ARM2 :: StateName
pattern S_ARM2 = StateName 804

pattern S_ARM2A :: StateName
pattern S_ARM2A = StateName 805

pattern S_BAR1 :: StateName
pattern S_BAR1 = StateName 806

pattern S_BAR2 :: StateName
pattern S_BAR2 = StateName 807

pattern S_BEXP :: StateName
pattern S_BEXP = StateName 808

pattern S_BEXP2 :: StateName
pattern S_BEXP2 = StateName 809

pattern S_BEXP3 :: StateName
pattern S_BEXP3 = StateName 810

pattern S_BEXP4 :: StateName
pattern S_BEXP4 = StateName 811

pattern S_BEXP5 :: StateName
pattern S_BEXP5 = StateName 812

pattern S_BBAR1 :: StateName
pattern S_BBAR1 = StateName 813

pattern S_BBAR2 :: StateName
pattern S_BBAR2 = StateName 814

pattern S_BBAR3 :: StateName
pattern S_BBAR3 = StateName 815

pattern S_BON1 :: StateName
pattern S_BON1 = StateName 816

pattern S_BON1A :: StateName
pattern S_BON1A = StateName 817

pattern S_BON1B :: StateName
pattern S_BON1B = StateName 818

pattern S_BON1C :: StateName
pattern S_BON1C = StateName 819

pattern S_BON1D :: StateName
pattern S_BON1D = StateName 820

pattern S_BON1E :: StateName
pattern S_BON1E = StateName 821

pattern S_BON2 :: StateName
pattern S_BON2 = StateName 822

pattern S_BON2A :: StateName
pattern S_BON2A = StateName 823

pattern S_BON2B :: StateName
pattern S_BON2B = StateName 824

pattern S_BON2C :: StateName
pattern S_BON2C = StateName 825

pattern S_BON2D :: StateName
pattern S_BON2D = StateName 826

pattern S_BON2E :: StateName
pattern S_BON2E = StateName 827

pattern S_BKEY :: StateName
pattern S_BKEY = StateName 828

pattern S_BKEY2 :: StateName
pattern S_BKEY2 = StateName 829

pattern S_RKEY :: StateName
pattern S_RKEY = StateName 830

pattern S_RKEY2 :: StateName
pattern S_RKEY2 = StateName 831

pattern S_YKEY :: StateName
pattern S_YKEY = StateName 832

pattern S_YKEY2 :: StateName
pattern S_YKEY2 = StateName 833

pattern S_BSKULL :: StateName
pattern S_BSKULL = StateName 834

pattern S_BSKULL2 :: StateName
pattern S_BSKULL2 = StateName 835

pattern S_RSKULL :: StateName
pattern S_RSKULL = StateName 836

pattern S_RSKULL2 :: StateName
pattern S_RSKULL2 = StateName 837

pattern S_YSKULL :: StateName
pattern S_YSKULL = StateName 838

pattern S_YSKULL2 :: StateName
pattern S_YSKULL2 = StateName 839

pattern S_STIM :: StateName
pattern S_STIM = StateName 840

pattern S_MEDI :: StateName
pattern S_MEDI = StateName 841

pattern S_SOUL :: StateName
pattern S_SOUL = StateName 842

pattern S_SOUL2 :: StateName
pattern S_SOUL2 = StateName 843

pattern S_SOUL3 :: StateName
pattern S_SOUL3 = StateName 844

pattern S_SOUL4 :: StateName
pattern S_SOUL4 = StateName 845

pattern S_SOUL5 :: StateName
pattern S_SOUL5 = StateName 846

pattern S_SOUL6 :: StateName
pattern S_SOUL6 = StateName 847

pattern S_PINV :: StateName
pattern S_PINV = StateName 848

pattern S_PINV2 :: StateName
pattern S_PINV2 = StateName 849

pattern S_PINV3 :: StateName
pattern S_PINV3 = StateName 850

pattern S_PINV4 :: StateName
pattern S_PINV4 = StateName 851

pattern S_PSTR :: StateName
pattern S_PSTR = StateName 852

pattern S_PINS :: StateName
pattern S_PINS = StateName 853

pattern S_PINS2 :: StateName
pattern S_PINS2 = StateName 854

pattern S_PINS3 :: StateName
pattern S_PINS3 = StateName 855

pattern S_PINS4 :: StateName
pattern S_PINS4 = StateName 856

pattern S_MEGA :: StateName
pattern S_MEGA = StateName 857

pattern S_MEGA2 :: StateName
pattern S_MEGA2 = StateName 858

pattern S_MEGA3 :: StateName
pattern S_MEGA3 = StateName 859

pattern S_MEGA4 :: StateName
pattern S_MEGA4 = StateName 860

pattern S_SUIT :: StateName
pattern S_SUIT = StateName 861

pattern S_PMAP :: StateName
pattern S_PMAP = StateName 862

pattern S_PMAP2 :: StateName
pattern S_PMAP2 = StateName 863

pattern S_PMAP3 :: StateName
pattern S_PMAP3 = StateName 864

pattern S_PMAP4 :: StateName
pattern S_PMAP4 = StateName 865

pattern S_PMAP5 :: StateName
pattern S_PMAP5 = StateName 866

pattern S_PMAP6 :: StateName
pattern S_PMAP6 = StateName 867

pattern S_PVIS :: StateName
pattern S_PVIS = StateName 868

pattern S_PVIS2 :: StateName
pattern S_PVIS2 = StateName 869

pattern S_CLIP :: StateName
pattern S_CLIP = StateName 870

pattern S_AMMO :: StateName
pattern S_AMMO = StateName 871

pattern S_ROCK :: StateName
pattern S_ROCK = StateName 872

pattern S_BROK :: StateName
pattern S_BROK = StateName 873

pattern S_CELL :: StateName
pattern S_CELL = StateName 874

pattern S_CELP :: StateName
pattern S_CELP = StateName 875

pattern S_SHEL :: StateName
pattern S_SHEL = StateName 876

pattern S_SBOX :: StateName
pattern S_SBOX = StateName 877

pattern S_BPAK :: StateName
pattern S_BPAK = StateName 878

pattern S_BFUG :: StateName
pattern S_BFUG = StateName 879

pattern S_MGUN :: StateName
pattern S_MGUN = StateName 880

pattern S_CSAW :: StateName
pattern S_CSAW = StateName 881

pattern S_LAUN :: StateName
pattern S_LAUN = StateName 882

pattern S_PLAS :: StateName
pattern S_PLAS = StateName 883

pattern S_SHOT :: StateName
pattern S_SHOT = StateName 884

pattern S_SHOT2 :: StateName
pattern S_SHOT2 = StateName 885

pattern S_COLU :: StateName
pattern S_COLU = StateName 886

pattern S_STALAG :: StateName
pattern S_STALAG = StateName 887

pattern S_BLOODYTWITCH :: StateName
pattern S_BLOODYTWITCH = StateName 888

pattern S_BLOODYTWITCH2 :: StateName
pattern S_BLOODYTWITCH2 = StateName 889

pattern S_BLOODYTWITCH3 :: StateName
pattern S_BLOODYTWITCH3 = StateName 890

pattern S_BLOODYTWITCH4 :: StateName
pattern S_BLOODYTWITCH4 = StateName 891

pattern S_DEADTORSO :: StateName
pattern S_DEADTORSO = StateName 892

pattern S_DEADBOTTOM :: StateName
pattern S_DEADBOTTOM = StateName 893

pattern S_HEADSONSTICK :: StateName
pattern S_HEADSONSTICK = StateName 894

pattern S_GIBS :: StateName
pattern S_GIBS = StateName 895

pattern S_HEADONASTICK :: StateName
pattern S_HEADONASTICK = StateName 896

pattern S_HEADCANDLES :: StateName
pattern S_HEADCANDLES = StateName 897

pattern S_HEADCANDLES2 :: StateName
pattern S_HEADCANDLES2 = StateName 898

pattern S_DEADSTICK :: StateName
pattern S_DEADSTICK = StateName 899

pattern S_LIVESTICK :: StateName
pattern S_LIVESTICK = StateName 900

pattern S_LIVESTICK2 :: StateName
pattern S_LIVESTICK2 = StateName 901

pattern S_MEAT2 :: StateName
pattern S_MEAT2 = StateName 902

pattern S_MEAT3 :: StateName
pattern S_MEAT3 = StateName 903

pattern S_MEAT4 :: StateName
pattern S_MEAT4 = StateName 904

pattern S_MEAT5 :: StateName
pattern S_MEAT5 = StateName 905

pattern S_STALAGTITE :: StateName
pattern S_STALAGTITE = StateName 906

pattern S_TALLGRNCOL :: StateName
pattern S_TALLGRNCOL = StateName 907

pattern S_SHRTGRNCOL :: StateName
pattern S_SHRTGRNCOL = StateName 908

pattern S_TALLREDCOL :: StateName
pattern S_TALLREDCOL = StateName 909

pattern S_SHRTREDCOL :: StateName
pattern S_SHRTREDCOL = StateName 910

pattern S_CANDLESTIK :: StateName
pattern S_CANDLESTIK = StateName 911

pattern S_CANDELABRA :: StateName
pattern S_CANDELABRA = StateName 912

pattern S_SKULLCOL :: StateName
pattern S_SKULLCOL = StateName 913

pattern S_TORCHTREE :: StateName
pattern S_TORCHTREE = StateName 914

pattern S_BIGTREE :: StateName
pattern S_BIGTREE = StateName 915

pattern S_TECHPILLAR :: StateName
pattern S_TECHPILLAR = StateName 916

pattern S_EVILEYE :: StateName
pattern S_EVILEYE = StateName 917

pattern S_EVILEYE2 :: StateName
pattern S_EVILEYE2 = StateName 918

pattern S_EVILEYE3 :: StateName
pattern S_EVILEYE3 = StateName 919

pattern S_EVILEYE4 :: StateName
pattern S_EVILEYE4 = StateName 920

pattern S_FLOATSKULL :: StateName
pattern S_FLOATSKULL = StateName 921

pattern S_FLOATSKULL2 :: StateName
pattern S_FLOATSKULL2 = StateName 922

pattern S_FLOATSKULL3 :: StateName
pattern S_FLOATSKULL3 = StateName 923

pattern S_HEARTCOL :: StateName
pattern S_HEARTCOL = StateName 924

pattern S_HEARTCOL2 :: StateName
pattern S_HEARTCOL2 = StateName 925

pattern S_BLUETORCH :: StateName
pattern S_BLUETORCH = StateName 926

pattern S_BLUETORCH2 :: StateName
pattern S_BLUETORCH2 = StateName 927

pattern S_BLUETORCH3 :: StateName
pattern S_BLUETORCH3 = StateName 928

pattern S_BLUETORCH4 :: StateName
pattern S_BLUETORCH4 = StateName 929

pattern S_GREENTORCH :: StateName
pattern S_GREENTORCH = StateName 930

pattern S_GREENTORCH2 :: StateName
pattern S_GREENTORCH2 = StateName 931

pattern S_GREENTORCH3 :: StateName
pattern S_GREENTORCH3 = StateName 932

pattern S_GREENTORCH4 :: StateName
pattern S_GREENTORCH4 = StateName 933

pattern S_REDTORCH :: StateName
pattern S_REDTORCH = StateName 934

pattern S_REDTORCH2 :: StateName
pattern S_REDTORCH2 = StateName 935

pattern S_REDTORCH3 :: StateName
pattern S_REDTORCH3 = StateName 936

pattern S_REDTORCH4 :: StateName
pattern S_REDTORCH4 = StateName 937

pattern S_BTORCHSHRT :: StateName
pattern S_BTORCHSHRT = StateName 938

pattern S_BTORCHSHRT2 :: StateName
pattern S_BTORCHSHRT2 = StateName 939

pattern S_BTORCHSHRT3 :: StateName
pattern S_BTORCHSHRT3 = StateName 940

pattern S_BTORCHSHRT4 :: StateName
pattern S_BTORCHSHRT4 = StateName 941

pattern S_GTORCHSHRT :: StateName
pattern S_GTORCHSHRT = StateName 942

pattern S_GTORCHSHRT2 :: StateName
pattern S_GTORCHSHRT2 = StateName 943

pattern S_GTORCHSHRT3 :: StateName
pattern S_GTORCHSHRT3 = StateName 944

pattern S_GTORCHSHRT4 :: StateName
pattern S_GTORCHSHRT4 = StateName 945

pattern S_RTORCHSHRT :: StateName
pattern S_RTORCHSHRT = StateName 946

pattern S_RTORCHSHRT2 :: StateName
pattern S_RTORCHSHRT2 = StateName 947

pattern S_RTORCHSHRT3 :: StateName
pattern S_RTORCHSHRT3 = StateName 948

pattern S_RTORCHSHRT4 :: StateName
pattern S_RTORCHSHRT4 = StateName 949

pattern S_HANGNOGUTS :: StateName
pattern S_HANGNOGUTS = StateName 950

pattern S_HANGBNOBRAIN :: StateName
pattern S_HANGBNOBRAIN = StateName 951

pattern S_HANGTLOOKDN :: StateName
pattern S_HANGTLOOKDN = StateName 952

pattern S_HANGTSKULL :: StateName
pattern S_HANGTSKULL = StateName 953

pattern S_HANGTLOOKUP :: StateName
pattern S_HANGTLOOKUP = StateName 954

pattern S_HANGTNOBRAIN :: StateName
pattern S_HANGTNOBRAIN = StateName 955

pattern S_COLONGIBS :: StateName
pattern S_COLONGIBS = StateName 956

pattern S_SMALLPOOL :: StateName
pattern S_SMALLPOOL = StateName 957

pattern S_BRAINSTEM :: StateName
pattern S_BRAINSTEM = StateName 958

pattern S_TECHLAMP :: StateName
pattern S_TECHLAMP = StateName 959

pattern S_TECHLAMP2 :: StateName
pattern S_TECHLAMP2 = StateName 960

pattern S_TECHLAMP3 :: StateName
pattern S_TECHLAMP3 = StateName 961

pattern S_TECHLAMP4 :: StateName
pattern S_TECHLAMP4 = StateName 962

pattern S_TECH2LAMP :: StateName
pattern S_TECH2LAMP = StateName 963

pattern S_TECH2LAMP2 :: StateName
pattern S_TECH2LAMP2 = StateName 964

pattern S_TECH2LAMP3 :: StateName
pattern S_TECH2LAMP3 = StateName 965

pattern S_TECH2LAMP4 :: StateName
pattern S_TECH2LAMP4 = StateName 966


parseStateName :: String -> Maybe (StateName, String)
parseStateName input = case lex input of
    [("S_NULL", rest)] -> Just (S_NULL, rest)
    [("S_LIGHTDONE", rest)] -> Just (S_LIGHTDONE, rest)
    [("S_PUNCH", rest)] -> Just (S_PUNCH, rest)
    [("S_PUNCHDOWN", rest)] -> Just (S_PUNCHDOWN, rest)
    [("S_PUNCHUP", rest)] -> Just (S_PUNCHUP, rest)
    [("S_PUNCH1", rest)] -> Just (S_PUNCH1, rest)
    [("S_PUNCH2", rest)] -> Just (S_PUNCH2, rest)
    [("S_PUNCH3", rest)] -> Just (S_PUNCH3, rest)
    [("S_PUNCH4", rest)] -> Just (S_PUNCH4, rest)
    [("S_PUNCH5", rest)] -> Just (S_PUNCH5, rest)
    [("S_PISTOL", rest)] -> Just (S_PISTOL, rest)
    [("S_PISTOLDOWN", rest)] -> Just (S_PISTOLDOWN, rest)
    [("S_PISTOLUP", rest)] -> Just (S_PISTOLUP, rest)
    [("S_PISTOL1", rest)] -> Just (S_PISTOL1, rest)
    [("S_PISTOL2", rest)] -> Just (S_PISTOL2, rest)
    [("S_PISTOL3", rest)] -> Just (S_PISTOL3, rest)
    [("S_PISTOL4", rest)] -> Just (S_PISTOL4, rest)
    [("S_PISTOLFLASH", rest)] -> Just (S_PISTOLFLASH, rest)
    [("S_SGUN", rest)] -> Just (S_SGUN, rest)
    [("S_SGUNDOWN", rest)] -> Just (S_SGUNDOWN, rest)
    [("S_SGUNUP", rest)] -> Just (S_SGUNUP, rest)
    [("S_SGUN1", rest)] -> Just (S_SGUN1, rest)
    [("S_SGUN2", rest)] -> Just (S_SGUN2, rest)
    [("S_SGUN3", rest)] -> Just (S_SGUN3, rest)
    [("S_SGUN4", rest)] -> Just (S_SGUN4, rest)
    [("S_SGUN5", rest)] -> Just (S_SGUN5, rest)
    [("S_SGUN6", rest)] -> Just (S_SGUN6, rest)
    [("S_SGUN7", rest)] -> Just (S_SGUN7, rest)
    [("S_SGUN8", rest)] -> Just (S_SGUN8, rest)
    [("S_SGUN9", rest)] -> Just (S_SGUN9, rest)
    [("S_SGUNFLASH1", rest)] -> Just (S_SGUNFLASH1, rest)
    [("S_SGUNFLASH2", rest)] -> Just (S_SGUNFLASH2, rest)
    [("S_DSGUN", rest)] -> Just (S_DSGUN, rest)
    [("S_DSGUNDOWN", rest)] -> Just (S_DSGUNDOWN, rest)
    [("S_DSGUNUP", rest)] -> Just (S_DSGUNUP, rest)
    [("S_DSGUN1", rest)] -> Just (S_DSGUN1, rest)
    [("S_DSGUN2", rest)] -> Just (S_DSGUN2, rest)
    [("S_DSGUN3", rest)] -> Just (S_DSGUN3, rest)
    [("S_DSGUN4", rest)] -> Just (S_DSGUN4, rest)
    [("S_DSGUN5", rest)] -> Just (S_DSGUN5, rest)
    [("S_DSGUN6", rest)] -> Just (S_DSGUN6, rest)
    [("S_DSGUN7", rest)] -> Just (S_DSGUN7, rest)
    [("S_DSGUN8", rest)] -> Just (S_DSGUN8, rest)
    [("S_DSGUN9", rest)] -> Just (S_DSGUN9, rest)
    [("S_DSGUN10", rest)] -> Just (S_DSGUN10, rest)
    [("S_DSNR1", rest)] -> Just (S_DSNR1, rest)
    [("S_DSNR2", rest)] -> Just (S_DSNR2, rest)
    [("S_DSGUNFLASH1", rest)] -> Just (S_DSGUNFLASH1, rest)
    [("S_DSGUNFLASH2", rest)] -> Just (S_DSGUNFLASH2, rest)
    [("S_CHAIN", rest)] -> Just (S_CHAIN, rest)
    [("S_CHAINDOWN", rest)] -> Just (S_CHAINDOWN, rest)
    [("S_CHAINUP", rest)] -> Just (S_CHAINUP, rest)
    [("S_CHAIN1", rest)] -> Just (S_CHAIN1, rest)
    [("S_CHAIN2", rest)] -> Just (S_CHAIN2, rest)
    [("S_CHAIN3", rest)] -> Just (S_CHAIN3, rest)
    [("S_CHAINFLASH1", rest)] -> Just (S_CHAINFLASH1, rest)
    [("S_CHAINFLASH2", rest)] -> Just (S_CHAINFLASH2, rest)
    [("S_MISSILE", rest)] -> Just (S_MISSILE, rest)
    [("S_MISSILEDOWN", rest)] -> Just (S_MISSILEDOWN, rest)
    [("S_MISSILEUP", rest)] -> Just (S_MISSILEUP, rest)
    [("S_MISSILE1", rest)] -> Just (S_MISSILE1, rest)
    [("S_MISSILE2", rest)] -> Just (S_MISSILE2, rest)
    [("S_MISSILE3", rest)] -> Just (S_MISSILE3, rest)
    [("S_MISSILEFLASH1", rest)] -> Just (S_MISSILEFLASH1, rest)
    [("S_MISSILEFLASH2", rest)] -> Just (S_MISSILEFLASH2, rest)
    [("S_MISSILEFLASH3", rest)] -> Just (S_MISSILEFLASH3, rest)
    [("S_MISSILEFLASH4", rest)] -> Just (S_MISSILEFLASH4, rest)
    [("S_SAW", rest)] -> Just (S_SAW, rest)
    [("S_SAWB", rest)] -> Just (S_SAWB, rest)
    [("S_SAWDOWN", rest)] -> Just (S_SAWDOWN, rest)
    [("S_SAWUP", rest)] -> Just (S_SAWUP, rest)
    [("S_SAW1", rest)] -> Just (S_SAW1, rest)
    [("S_SAW2", rest)] -> Just (S_SAW2, rest)
    [("S_SAW3", rest)] -> Just (S_SAW3, rest)
    [("S_PLASMA", rest)] -> Just (S_PLASMA, rest)
    [("S_PLASMADOWN", rest)] -> Just (S_PLASMADOWN, rest)
    [("S_PLASMAUP", rest)] -> Just (S_PLASMAUP, rest)
    [("S_PLASMA1", rest)] -> Just (S_PLASMA1, rest)
    [("S_PLASMA2", rest)] -> Just (S_PLASMA2, rest)
    [("S_PLASMAFLASH1", rest)] -> Just (S_PLASMAFLASH1, rest)
    [("S_PLASMAFLASH2", rest)] -> Just (S_PLASMAFLASH2, rest)
    [("S_BFG", rest)] -> Just (S_BFG, rest)
    [("S_BFGDOWN", rest)] -> Just (S_BFGDOWN, rest)
    [("S_BFGUP", rest)] -> Just (S_BFGUP, rest)
    [("S_BFG1", rest)] -> Just (S_BFG1, rest)
    [("S_BFG2", rest)] -> Just (S_BFG2, rest)
    [("S_BFG3", rest)] -> Just (S_BFG3, rest)
    [("S_BFG4", rest)] -> Just (S_BFG4, rest)
    [("S_BFGFLASH1", rest)] -> Just (S_BFGFLASH1, rest)
    [("S_BFGFLASH2", rest)] -> Just (S_BFGFLASH2, rest)
    [("S_BLOOD1", rest)] -> Just (S_BLOOD1, rest)
    [("S_BLOOD2", rest)] -> Just (S_BLOOD2, rest)
    [("S_BLOOD3", rest)] -> Just (S_BLOOD3, rest)
    [("S_PUFF1", rest)] -> Just (S_PUFF1, rest)
    [("S_PUFF2", rest)] -> Just (S_PUFF2, rest)
    [("S_PUFF3", rest)] -> Just (S_PUFF3, rest)
    [("S_PUFF4", rest)] -> Just (S_PUFF4, rest)
    [("S_TBALL1", rest)] -> Just (S_TBALL1, rest)
    [("S_TBALL2", rest)] -> Just (S_TBALL2, rest)
    [("S_TBALLX1", rest)] -> Just (S_TBALLX1, rest)
    [("S_TBALLX2", rest)] -> Just (S_TBALLX2, rest)
    [("S_TBALLX3", rest)] -> Just (S_TBALLX3, rest)
    [("S_RBALL1", rest)] -> Just (S_RBALL1, rest)
    [("S_RBALL2", rest)] -> Just (S_RBALL2, rest)
    [("S_RBALLX1", rest)] -> Just (S_RBALLX1, rest)
    [("S_RBALLX2", rest)] -> Just (S_RBALLX2, rest)
    [("S_RBALLX3", rest)] -> Just (S_RBALLX3, rest)
    [("S_PLASBALL", rest)] -> Just (S_PLASBALL, rest)
    [("S_PLASBALL2", rest)] -> Just (S_PLASBALL2, rest)
    [("S_PLASEXP", rest)] -> Just (S_PLASEXP, rest)
    [("S_PLASEXP2", rest)] -> Just (S_PLASEXP2, rest)
    [("S_PLASEXP3", rest)] -> Just (S_PLASEXP3, rest)
    [("S_PLASEXP4", rest)] -> Just (S_PLASEXP4, rest)
    [("S_PLASEXP5", rest)] -> Just (S_PLASEXP5, rest)
    [("S_ROCKET", rest)] -> Just (S_ROCKET, rest)
    [("S_BFGSHOT", rest)] -> Just (S_BFGSHOT, rest)
    [("S_BFGSHOT2", rest)] -> Just (S_BFGSHOT2, rest)
    [("S_BFGLAND", rest)] -> Just (S_BFGLAND, rest)
    [("S_BFGLAND2", rest)] -> Just (S_BFGLAND2, rest)
    [("S_BFGLAND3", rest)] -> Just (S_BFGLAND3, rest)
    [("S_BFGLAND4", rest)] -> Just (S_BFGLAND4, rest)
    [("S_BFGLAND5", rest)] -> Just (S_BFGLAND5, rest)
    [("S_BFGLAND6", rest)] -> Just (S_BFGLAND6, rest)
    [("S_BFGEXP", rest)] -> Just (S_BFGEXP, rest)
    [("S_BFGEXP2", rest)] -> Just (S_BFGEXP2, rest)
    [("S_BFGEXP3", rest)] -> Just (S_BFGEXP3, rest)
    [("S_BFGEXP4", rest)] -> Just (S_BFGEXP4, rest)
    [("S_EXPLODE1", rest)] -> Just (S_EXPLODE1, rest)
    [("S_EXPLODE2", rest)] -> Just (S_EXPLODE2, rest)
    [("S_EXPLODE3", rest)] -> Just (S_EXPLODE3, rest)
    [("S_TFOG", rest)] -> Just (S_TFOG, rest)
    [("S_TFOG01", rest)] -> Just (S_TFOG01, rest)
    [("S_TFOG02", rest)] -> Just (S_TFOG02, rest)
    [("S_TFOG2", rest)] -> Just (S_TFOG2, rest)
    [("S_TFOG3", rest)] -> Just (S_TFOG3, rest)
    [("S_TFOG4", rest)] -> Just (S_TFOG4, rest)
    [("S_TFOG5", rest)] -> Just (S_TFOG5, rest)
    [("S_TFOG6", rest)] -> Just (S_TFOG6, rest)
    [("S_TFOG7", rest)] -> Just (S_TFOG7, rest)
    [("S_TFOG8", rest)] -> Just (S_TFOG8, rest)
    [("S_TFOG9", rest)] -> Just (S_TFOG9, rest)
    [("S_TFOG10", rest)] -> Just (S_TFOG10, rest)
    [("S_IFOG", rest)] -> Just (S_IFOG, rest)
    [("S_IFOG01", rest)] -> Just (S_IFOG01, rest)
    [("S_IFOG02", rest)] -> Just (S_IFOG02, rest)
    [("S_IFOG2", rest)] -> Just (S_IFOG2, rest)
    [("S_IFOG3", rest)] -> Just (S_IFOG3, rest)
    [("S_IFOG4", rest)] -> Just (S_IFOG4, rest)
    [("S_IFOG5", rest)] -> Just (S_IFOG5, rest)
    [("S_PLAY", rest)] -> Just (S_PLAY, rest)
    [("S_PLAY_RUN1", rest)] -> Just (S_PLAY_RUN1, rest)
    [("S_PLAY_RUN2", rest)] -> Just (S_PLAY_RUN2, rest)
    [("S_PLAY_RUN3", rest)] -> Just (S_PLAY_RUN3, rest)
    [("S_PLAY_RUN4", rest)] -> Just (S_PLAY_RUN4, rest)
    [("S_PLAY_ATK1", rest)] -> Just (S_PLAY_ATK1, rest)
    [("S_PLAY_ATK2", rest)] -> Just (S_PLAY_ATK2, rest)
    [("S_PLAY_PAIN", rest)] -> Just (S_PLAY_PAIN, rest)
    [("S_PLAY_PAIN2", rest)] -> Just (S_PLAY_PAIN2, rest)
    [("S_PLAY_DIE1", rest)] -> Just (S_PLAY_DIE1, rest)
    [("S_PLAY_DIE2", rest)] -> Just (S_PLAY_DIE2, rest)
    [("S_PLAY_DIE3", rest)] -> Just (S_PLAY_DIE3, rest)
    [("S_PLAY_DIE4", rest)] -> Just (S_PLAY_DIE4, rest)
    [("S_PLAY_DIE5", rest)] -> Just (S_PLAY_DIE5, rest)
    [("S_PLAY_DIE6", rest)] -> Just (S_PLAY_DIE6, rest)
    [("S_PLAY_DIE7", rest)] -> Just (S_PLAY_DIE7, rest)
    [("S_PLAY_XDIE1", rest)] -> Just (S_PLAY_XDIE1, rest)
    [("S_PLAY_XDIE2", rest)] -> Just (S_PLAY_XDIE2, rest)
    [("S_PLAY_XDIE3", rest)] -> Just (S_PLAY_XDIE3, rest)
    [("S_PLAY_XDIE4", rest)] -> Just (S_PLAY_XDIE4, rest)
    [("S_PLAY_XDIE5", rest)] -> Just (S_PLAY_XDIE5, rest)
    [("S_PLAY_XDIE6", rest)] -> Just (S_PLAY_XDIE6, rest)
    [("S_PLAY_XDIE7", rest)] -> Just (S_PLAY_XDIE7, rest)
    [("S_PLAY_XDIE8", rest)] -> Just (S_PLAY_XDIE8, rest)
    [("S_PLAY_XDIE9", rest)] -> Just (S_PLAY_XDIE9, rest)
    [("S_POSS_STND", rest)] -> Just (S_POSS_STND, rest)
    [("S_POSS_STND2", rest)] -> Just (S_POSS_STND2, rest)
    [("S_POSS_RUN1", rest)] -> Just (S_POSS_RUN1, rest)
    [("S_POSS_RUN2", rest)] -> Just (S_POSS_RUN2, rest)
    [("S_POSS_RUN3", rest)] -> Just (S_POSS_RUN3, rest)
    [("S_POSS_RUN4", rest)] -> Just (S_POSS_RUN4, rest)
    [("S_POSS_RUN5", rest)] -> Just (S_POSS_RUN5, rest)
    [("S_POSS_RUN6", rest)] -> Just (S_POSS_RUN6, rest)
    [("S_POSS_RUN7", rest)] -> Just (S_POSS_RUN7, rest)
    [("S_POSS_RUN8", rest)] -> Just (S_POSS_RUN8, rest)
    [("S_POSS_ATK1", rest)] -> Just (S_POSS_ATK1, rest)
    [("S_POSS_ATK2", rest)] -> Just (S_POSS_ATK2, rest)
    [("S_POSS_ATK3", rest)] -> Just (S_POSS_ATK3, rest)
    [("S_POSS_PAIN", rest)] -> Just (S_POSS_PAIN, rest)
    [("S_POSS_PAIN2", rest)] -> Just (S_POSS_PAIN2, rest)
    [("S_POSS_DIE1", rest)] -> Just (S_POSS_DIE1, rest)
    [("S_POSS_DIE2", rest)] -> Just (S_POSS_DIE2, rest)
    [("S_POSS_DIE3", rest)] -> Just (S_POSS_DIE3, rest)
    [("S_POSS_DIE4", rest)] -> Just (S_POSS_DIE4, rest)
    [("S_POSS_DIE5", rest)] -> Just (S_POSS_DIE5, rest)
    [("S_POSS_XDIE1", rest)] -> Just (S_POSS_XDIE1, rest)
    [("S_POSS_XDIE2", rest)] -> Just (S_POSS_XDIE2, rest)
    [("S_POSS_XDIE3", rest)] -> Just (S_POSS_XDIE3, rest)
    [("S_POSS_XDIE4", rest)] -> Just (S_POSS_XDIE4, rest)
    [("S_POSS_XDIE5", rest)] -> Just (S_POSS_XDIE5, rest)
    [("S_POSS_XDIE6", rest)] -> Just (S_POSS_XDIE6, rest)
    [("S_POSS_XDIE7", rest)] -> Just (S_POSS_XDIE7, rest)
    [("S_POSS_XDIE8", rest)] -> Just (S_POSS_XDIE8, rest)
    [("S_POSS_XDIE9", rest)] -> Just (S_POSS_XDIE9, rest)
    [("S_POSS_RAISE1", rest)] -> Just (S_POSS_RAISE1, rest)
    [("S_POSS_RAISE2", rest)] -> Just (S_POSS_RAISE2, rest)
    [("S_POSS_RAISE3", rest)] -> Just (S_POSS_RAISE3, rest)
    [("S_POSS_RAISE4", rest)] -> Just (S_POSS_RAISE4, rest)
    [("S_SPOS_STND", rest)] -> Just (S_SPOS_STND, rest)
    [("S_SPOS_STND2", rest)] -> Just (S_SPOS_STND2, rest)
    [("S_SPOS_RUN1", rest)] -> Just (S_SPOS_RUN1, rest)
    [("S_SPOS_RUN2", rest)] -> Just (S_SPOS_RUN2, rest)
    [("S_SPOS_RUN3", rest)] -> Just (S_SPOS_RUN3, rest)
    [("S_SPOS_RUN4", rest)] -> Just (S_SPOS_RUN4, rest)
    [("S_SPOS_RUN5", rest)] -> Just (S_SPOS_RUN5, rest)
    [("S_SPOS_RUN6", rest)] -> Just (S_SPOS_RUN6, rest)
    [("S_SPOS_RUN7", rest)] -> Just (S_SPOS_RUN7, rest)
    [("S_SPOS_RUN8", rest)] -> Just (S_SPOS_RUN8, rest)
    [("S_SPOS_ATK1", rest)] -> Just (S_SPOS_ATK1, rest)
    [("S_SPOS_ATK2", rest)] -> Just (S_SPOS_ATK2, rest)
    [("S_SPOS_ATK3", rest)] -> Just (S_SPOS_ATK3, rest)
    [("S_SPOS_PAIN", rest)] -> Just (S_SPOS_PAIN, rest)
    [("S_SPOS_PAIN2", rest)] -> Just (S_SPOS_PAIN2, rest)
    [("S_SPOS_DIE1", rest)] -> Just (S_SPOS_DIE1, rest)
    [("S_SPOS_DIE2", rest)] -> Just (S_SPOS_DIE2, rest)
    [("S_SPOS_DIE3", rest)] -> Just (S_SPOS_DIE3, rest)
    [("S_SPOS_DIE4", rest)] -> Just (S_SPOS_DIE4, rest)
    [("S_SPOS_DIE5", rest)] -> Just (S_SPOS_DIE5, rest)
    [("S_SPOS_XDIE1", rest)] -> Just (S_SPOS_XDIE1, rest)
    [("S_SPOS_XDIE2", rest)] -> Just (S_SPOS_XDIE2, rest)
    [("S_SPOS_XDIE3", rest)] -> Just (S_SPOS_XDIE3, rest)
    [("S_SPOS_XDIE4", rest)] -> Just (S_SPOS_XDIE4, rest)
    [("S_SPOS_XDIE5", rest)] -> Just (S_SPOS_XDIE5, rest)
    [("S_SPOS_XDIE6", rest)] -> Just (S_SPOS_XDIE6, rest)
    [("S_SPOS_XDIE7", rest)] -> Just (S_SPOS_XDIE7, rest)
    [("S_SPOS_XDIE8", rest)] -> Just (S_SPOS_XDIE8, rest)
    [("S_SPOS_XDIE9", rest)] -> Just (S_SPOS_XDIE9, rest)
    [("S_SPOS_RAISE1", rest)] -> Just (S_SPOS_RAISE1, rest)
    [("S_SPOS_RAISE2", rest)] -> Just (S_SPOS_RAISE2, rest)
    [("S_SPOS_RAISE3", rest)] -> Just (S_SPOS_RAISE3, rest)
    [("S_SPOS_RAISE4", rest)] -> Just (S_SPOS_RAISE4, rest)
    [("S_SPOS_RAISE5", rest)] -> Just (S_SPOS_RAISE5, rest)
    [("S_VILE_STND", rest)] -> Just (S_VILE_STND, rest)
    [("S_VILE_STND2", rest)] -> Just (S_VILE_STND2, rest)
    [("S_VILE_RUN1", rest)] -> Just (S_VILE_RUN1, rest)
    [("S_VILE_RUN2", rest)] -> Just (S_VILE_RUN2, rest)
    [("S_VILE_RUN3", rest)] -> Just (S_VILE_RUN3, rest)
    [("S_VILE_RUN4", rest)] -> Just (S_VILE_RUN4, rest)
    [("S_VILE_RUN5", rest)] -> Just (S_VILE_RUN5, rest)
    [("S_VILE_RUN6", rest)] -> Just (S_VILE_RUN6, rest)
    [("S_VILE_RUN7", rest)] -> Just (S_VILE_RUN7, rest)
    [("S_VILE_RUN8", rest)] -> Just (S_VILE_RUN8, rest)
    [("S_VILE_RUN9", rest)] -> Just (S_VILE_RUN9, rest)
    [("S_VILE_RUN10", rest)] -> Just (S_VILE_RUN10, rest)
    [("S_VILE_RUN11", rest)] -> Just (S_VILE_RUN11, rest)
    [("S_VILE_RUN12", rest)] -> Just (S_VILE_RUN12, rest)
    [("S_VILE_ATK1", rest)] -> Just (S_VILE_ATK1, rest)
    [("S_VILE_ATK2", rest)] -> Just (S_VILE_ATK2, rest)
    [("S_VILE_ATK3", rest)] -> Just (S_VILE_ATK3, rest)
    [("S_VILE_ATK4", rest)] -> Just (S_VILE_ATK4, rest)
    [("S_VILE_ATK5", rest)] -> Just (S_VILE_ATK5, rest)
    [("S_VILE_ATK6", rest)] -> Just (S_VILE_ATK6, rest)
    [("S_VILE_ATK7", rest)] -> Just (S_VILE_ATK7, rest)
    [("S_VILE_ATK8", rest)] -> Just (S_VILE_ATK8, rest)
    [("S_VILE_ATK9", rest)] -> Just (S_VILE_ATK9, rest)
    [("S_VILE_ATK10", rest)] -> Just (S_VILE_ATK10, rest)
    [("S_VILE_ATK11", rest)] -> Just (S_VILE_ATK11, rest)
    [("S_VILE_HEAL1", rest)] -> Just (S_VILE_HEAL1, rest)
    [("S_VILE_HEAL2", rest)] -> Just (S_VILE_HEAL2, rest)
    [("S_VILE_HEAL3", rest)] -> Just (S_VILE_HEAL3, rest)
    [("S_VILE_PAIN", rest)] -> Just (S_VILE_PAIN, rest)
    [("S_VILE_PAIN2", rest)] -> Just (S_VILE_PAIN2, rest)
    [("S_VILE_DIE1", rest)] -> Just (S_VILE_DIE1, rest)
    [("S_VILE_DIE2", rest)] -> Just (S_VILE_DIE2, rest)
    [("S_VILE_DIE3", rest)] -> Just (S_VILE_DIE3, rest)
    [("S_VILE_DIE4", rest)] -> Just (S_VILE_DIE4, rest)
    [("S_VILE_DIE5", rest)] -> Just (S_VILE_DIE5, rest)
    [("S_VILE_DIE6", rest)] -> Just (S_VILE_DIE6, rest)
    [("S_VILE_DIE7", rest)] -> Just (S_VILE_DIE7, rest)
    [("S_VILE_DIE8", rest)] -> Just (S_VILE_DIE8, rest)
    [("S_VILE_DIE9", rest)] -> Just (S_VILE_DIE9, rest)
    [("S_VILE_DIE10", rest)] -> Just (S_VILE_DIE10, rest)
    [("S_FIRE1", rest)] -> Just (S_FIRE1, rest)
    [("S_FIRE2", rest)] -> Just (S_FIRE2, rest)
    [("S_FIRE3", rest)] -> Just (S_FIRE3, rest)
    [("S_FIRE4", rest)] -> Just (S_FIRE4, rest)
    [("S_FIRE5", rest)] -> Just (S_FIRE5, rest)
    [("S_FIRE6", rest)] -> Just (S_FIRE6, rest)
    [("S_FIRE7", rest)] -> Just (S_FIRE7, rest)
    [("S_FIRE8", rest)] -> Just (S_FIRE8, rest)
    [("S_FIRE9", rest)] -> Just (S_FIRE9, rest)
    [("S_FIRE10", rest)] -> Just (S_FIRE10, rest)
    [("S_FIRE11", rest)] -> Just (S_FIRE11, rest)
    [("S_FIRE12", rest)] -> Just (S_FIRE12, rest)
    [("S_FIRE13", rest)] -> Just (S_FIRE13, rest)
    [("S_FIRE14", rest)] -> Just (S_FIRE14, rest)
    [("S_FIRE15", rest)] -> Just (S_FIRE15, rest)
    [("S_FIRE16", rest)] -> Just (S_FIRE16, rest)
    [("S_FIRE17", rest)] -> Just (S_FIRE17, rest)
    [("S_FIRE18", rest)] -> Just (S_FIRE18, rest)
    [("S_FIRE19", rest)] -> Just (S_FIRE19, rest)
    [("S_FIRE20", rest)] -> Just (S_FIRE20, rest)
    [("S_FIRE21", rest)] -> Just (S_FIRE21, rest)
    [("S_FIRE22", rest)] -> Just (S_FIRE22, rest)
    [("S_FIRE23", rest)] -> Just (S_FIRE23, rest)
    [("S_FIRE24", rest)] -> Just (S_FIRE24, rest)
    [("S_FIRE25", rest)] -> Just (S_FIRE25, rest)
    [("S_FIRE26", rest)] -> Just (S_FIRE26, rest)
    [("S_FIRE27", rest)] -> Just (S_FIRE27, rest)
    [("S_FIRE28", rest)] -> Just (S_FIRE28, rest)
    [("S_FIRE29", rest)] -> Just (S_FIRE29, rest)
    [("S_FIRE30", rest)] -> Just (S_FIRE30, rest)
    [("S_SMOKE1", rest)] -> Just (S_SMOKE1, rest)
    [("S_SMOKE2", rest)] -> Just (S_SMOKE2, rest)
    [("S_SMOKE3", rest)] -> Just (S_SMOKE3, rest)
    [("S_SMOKE4", rest)] -> Just (S_SMOKE4, rest)
    [("S_SMOKE5", rest)] -> Just (S_SMOKE5, rest)
    [("S_TRACER", rest)] -> Just (S_TRACER, rest)
    [("S_TRACER2", rest)] -> Just (S_TRACER2, rest)
    [("S_TRACEEXP1", rest)] -> Just (S_TRACEEXP1, rest)
    [("S_TRACEEXP2", rest)] -> Just (S_TRACEEXP2, rest)
    [("S_TRACEEXP3", rest)] -> Just (S_TRACEEXP3, rest)
    [("S_SKEL_STND", rest)] -> Just (S_SKEL_STND, rest)
    [("S_SKEL_STND2", rest)] -> Just (S_SKEL_STND2, rest)
    [("S_SKEL_RUN1", rest)] -> Just (S_SKEL_RUN1, rest)
    [("S_SKEL_RUN2", rest)] -> Just (S_SKEL_RUN2, rest)
    [("S_SKEL_RUN3", rest)] -> Just (S_SKEL_RUN3, rest)
    [("S_SKEL_RUN4", rest)] -> Just (S_SKEL_RUN4, rest)
    [("S_SKEL_RUN5", rest)] -> Just (S_SKEL_RUN5, rest)
    [("S_SKEL_RUN6", rest)] -> Just (S_SKEL_RUN6, rest)
    [("S_SKEL_RUN7", rest)] -> Just (S_SKEL_RUN7, rest)
    [("S_SKEL_RUN8", rest)] -> Just (S_SKEL_RUN8, rest)
    [("S_SKEL_RUN9", rest)] -> Just (S_SKEL_RUN9, rest)
    [("S_SKEL_RUN10", rest)] -> Just (S_SKEL_RUN10, rest)
    [("S_SKEL_RUN11", rest)] -> Just (S_SKEL_RUN11, rest)
    [("S_SKEL_RUN12", rest)] -> Just (S_SKEL_RUN12, rest)
    [("S_SKEL_FIST1", rest)] -> Just (S_SKEL_FIST1, rest)
    [("S_SKEL_FIST2", rest)] -> Just (S_SKEL_FIST2, rest)
    [("S_SKEL_FIST3", rest)] -> Just (S_SKEL_FIST3, rest)
    [("S_SKEL_FIST4", rest)] -> Just (S_SKEL_FIST4, rest)
    [("S_SKEL_MISS1", rest)] -> Just (S_SKEL_MISS1, rest)
    [("S_SKEL_MISS2", rest)] -> Just (S_SKEL_MISS2, rest)
    [("S_SKEL_MISS3", rest)] -> Just (S_SKEL_MISS3, rest)
    [("S_SKEL_MISS4", rest)] -> Just (S_SKEL_MISS4, rest)
    [("S_SKEL_PAIN", rest)] -> Just (S_SKEL_PAIN, rest)
    [("S_SKEL_PAIN2", rest)] -> Just (S_SKEL_PAIN2, rest)
    [("S_SKEL_DIE1", rest)] -> Just (S_SKEL_DIE1, rest)
    [("S_SKEL_DIE2", rest)] -> Just (S_SKEL_DIE2, rest)
    [("S_SKEL_DIE3", rest)] -> Just (S_SKEL_DIE3, rest)
    [("S_SKEL_DIE4", rest)] -> Just (S_SKEL_DIE4, rest)
    [("S_SKEL_DIE5", rest)] -> Just (S_SKEL_DIE5, rest)
    [("S_SKEL_DIE6", rest)] -> Just (S_SKEL_DIE6, rest)
    [("S_SKEL_RAISE1", rest)] -> Just (S_SKEL_RAISE1, rest)
    [("S_SKEL_RAISE2", rest)] -> Just (S_SKEL_RAISE2, rest)
    [("S_SKEL_RAISE3", rest)] -> Just (S_SKEL_RAISE3, rest)
    [("S_SKEL_RAISE4", rest)] -> Just (S_SKEL_RAISE4, rest)
    [("S_SKEL_RAISE5", rest)] -> Just (S_SKEL_RAISE5, rest)
    [("S_SKEL_RAISE6", rest)] -> Just (S_SKEL_RAISE6, rest)
    [("S_FATSHOT1", rest)] -> Just (S_FATSHOT1, rest)
    [("S_FATSHOT2", rest)] -> Just (S_FATSHOT2, rest)
    [("S_FATSHOTX1", rest)] -> Just (S_FATSHOTX1, rest)
    [("S_FATSHOTX2", rest)] -> Just (S_FATSHOTX2, rest)
    [("S_FATSHOTX3", rest)] -> Just (S_FATSHOTX3, rest)
    [("S_FATT_STND", rest)] -> Just (S_FATT_STND, rest)
    [("S_FATT_STND2", rest)] -> Just (S_FATT_STND2, rest)
    [("S_FATT_RUN1", rest)] -> Just (S_FATT_RUN1, rest)
    [("S_FATT_RUN2", rest)] -> Just (S_FATT_RUN2, rest)
    [("S_FATT_RUN3", rest)] -> Just (S_FATT_RUN3, rest)
    [("S_FATT_RUN4", rest)] -> Just (S_FATT_RUN4, rest)
    [("S_FATT_RUN5", rest)] -> Just (S_FATT_RUN5, rest)
    [("S_FATT_RUN6", rest)] -> Just (S_FATT_RUN6, rest)
    [("S_FATT_RUN7", rest)] -> Just (S_FATT_RUN7, rest)
    [("S_FATT_RUN8", rest)] -> Just (S_FATT_RUN8, rest)
    [("S_FATT_RUN9", rest)] -> Just (S_FATT_RUN9, rest)
    [("S_FATT_RUN10", rest)] -> Just (S_FATT_RUN10, rest)
    [("S_FATT_RUN11", rest)] -> Just (S_FATT_RUN11, rest)
    [("S_FATT_RUN12", rest)] -> Just (S_FATT_RUN12, rest)
    [("S_FATT_ATK1", rest)] -> Just (S_FATT_ATK1, rest)
    [("S_FATT_ATK2", rest)] -> Just (S_FATT_ATK2, rest)
    [("S_FATT_ATK3", rest)] -> Just (S_FATT_ATK3, rest)
    [("S_FATT_ATK4", rest)] -> Just (S_FATT_ATK4, rest)
    [("S_FATT_ATK5", rest)] -> Just (S_FATT_ATK5, rest)
    [("S_FATT_ATK6", rest)] -> Just (S_FATT_ATK6, rest)
    [("S_FATT_ATK7", rest)] -> Just (S_FATT_ATK7, rest)
    [("S_FATT_ATK8", rest)] -> Just (S_FATT_ATK8, rest)
    [("S_FATT_ATK9", rest)] -> Just (S_FATT_ATK9, rest)
    [("S_FATT_ATK10", rest)] -> Just (S_FATT_ATK10, rest)
    [("S_FATT_PAIN", rest)] -> Just (S_FATT_PAIN, rest)
    [("S_FATT_PAIN2", rest)] -> Just (S_FATT_PAIN2, rest)
    [("S_FATT_DIE1", rest)] -> Just (S_FATT_DIE1, rest)
    [("S_FATT_DIE2", rest)] -> Just (S_FATT_DIE2, rest)
    [("S_FATT_DIE3", rest)] -> Just (S_FATT_DIE3, rest)
    [("S_FATT_DIE4", rest)] -> Just (S_FATT_DIE4, rest)
    [("S_FATT_DIE5", rest)] -> Just (S_FATT_DIE5, rest)
    [("S_FATT_DIE6", rest)] -> Just (S_FATT_DIE6, rest)
    [("S_FATT_DIE7", rest)] -> Just (S_FATT_DIE7, rest)
    [("S_FATT_DIE8", rest)] -> Just (S_FATT_DIE8, rest)
    [("S_FATT_DIE9", rest)] -> Just (S_FATT_DIE9, rest)
    [("S_FATT_DIE10", rest)] -> Just (S_FATT_DIE10, rest)
    [("S_FATT_RAISE1", rest)] -> Just (S_FATT_RAISE1, rest)
    [("S_FATT_RAISE2", rest)] -> Just (S_FATT_RAISE2, rest)
    [("S_FATT_RAISE3", rest)] -> Just (S_FATT_RAISE3, rest)
    [("S_FATT_RAISE4", rest)] -> Just (S_FATT_RAISE4, rest)
    [("S_FATT_RAISE5", rest)] -> Just (S_FATT_RAISE5, rest)
    [("S_FATT_RAISE6", rest)] -> Just (S_FATT_RAISE6, rest)
    [("S_FATT_RAISE7", rest)] -> Just (S_FATT_RAISE7, rest)
    [("S_FATT_RAISE8", rest)] -> Just (S_FATT_RAISE8, rest)
    [("S_CPOS_STND", rest)] -> Just (S_CPOS_STND, rest)
    [("S_CPOS_STND2", rest)] -> Just (S_CPOS_STND2, rest)
    [("S_CPOS_RUN1", rest)] -> Just (S_CPOS_RUN1, rest)
    [("S_CPOS_RUN2", rest)] -> Just (S_CPOS_RUN2, rest)
    [("S_CPOS_RUN3", rest)] -> Just (S_CPOS_RUN3, rest)
    [("S_CPOS_RUN4", rest)] -> Just (S_CPOS_RUN4, rest)
    [("S_CPOS_RUN5", rest)] -> Just (S_CPOS_RUN5, rest)
    [("S_CPOS_RUN6", rest)] -> Just (S_CPOS_RUN6, rest)
    [("S_CPOS_RUN7", rest)] -> Just (S_CPOS_RUN7, rest)
    [("S_CPOS_RUN8", rest)] -> Just (S_CPOS_RUN8, rest)
    [("S_CPOS_ATK1", rest)] -> Just (S_CPOS_ATK1, rest)
    [("S_CPOS_ATK2", rest)] -> Just (S_CPOS_ATK2, rest)
    [("S_CPOS_ATK3", rest)] -> Just (S_CPOS_ATK3, rest)
    [("S_CPOS_ATK4", rest)] -> Just (S_CPOS_ATK4, rest)
    [("S_CPOS_PAIN", rest)] -> Just (S_CPOS_PAIN, rest)
    [("S_CPOS_PAIN2", rest)] -> Just (S_CPOS_PAIN2, rest)
    [("S_CPOS_DIE1", rest)] -> Just (S_CPOS_DIE1, rest)
    [("S_CPOS_DIE2", rest)] -> Just (S_CPOS_DIE2, rest)
    [("S_CPOS_DIE3", rest)] -> Just (S_CPOS_DIE3, rest)
    [("S_CPOS_DIE4", rest)] -> Just (S_CPOS_DIE4, rest)
    [("S_CPOS_DIE5", rest)] -> Just (S_CPOS_DIE5, rest)
    [("S_CPOS_DIE6", rest)] -> Just (S_CPOS_DIE6, rest)
    [("S_CPOS_DIE7", rest)] -> Just (S_CPOS_DIE7, rest)
    [("S_CPOS_XDIE1", rest)] -> Just (S_CPOS_XDIE1, rest)
    [("S_CPOS_XDIE2", rest)] -> Just (S_CPOS_XDIE2, rest)
    [("S_CPOS_XDIE3", rest)] -> Just (S_CPOS_XDIE3, rest)
    [("S_CPOS_XDIE4", rest)] -> Just (S_CPOS_XDIE4, rest)
    [("S_CPOS_XDIE5", rest)] -> Just (S_CPOS_XDIE5, rest)
    [("S_CPOS_XDIE6", rest)] -> Just (S_CPOS_XDIE6, rest)
    [("S_CPOS_RAISE1", rest)] -> Just (S_CPOS_RAISE1, rest)
    [("S_CPOS_RAISE2", rest)] -> Just (S_CPOS_RAISE2, rest)
    [("S_CPOS_RAISE3", rest)] -> Just (S_CPOS_RAISE3, rest)
    [("S_CPOS_RAISE4", rest)] -> Just (S_CPOS_RAISE4, rest)
    [("S_CPOS_RAISE5", rest)] -> Just (S_CPOS_RAISE5, rest)
    [("S_CPOS_RAISE6", rest)] -> Just (S_CPOS_RAISE6, rest)
    [("S_CPOS_RAISE7", rest)] -> Just (S_CPOS_RAISE7, rest)
    [("S_TROO_STND", rest)] -> Just (S_TROO_STND, rest)
    [("S_TROO_STND2", rest)] -> Just (S_TROO_STND2, rest)
    [("S_TROO_RUN1", rest)] -> Just (S_TROO_RUN1, rest)
    [("S_TROO_RUN2", rest)] -> Just (S_TROO_RUN2, rest)
    [("S_TROO_RUN3", rest)] -> Just (S_TROO_RUN3, rest)
    [("S_TROO_RUN4", rest)] -> Just (S_TROO_RUN4, rest)
    [("S_TROO_RUN5", rest)] -> Just (S_TROO_RUN5, rest)
    [("S_TROO_RUN6", rest)] -> Just (S_TROO_RUN6, rest)
    [("S_TROO_RUN7", rest)] -> Just (S_TROO_RUN7, rest)
    [("S_TROO_RUN8", rest)] -> Just (S_TROO_RUN8, rest)
    [("S_TROO_ATK1", rest)] -> Just (S_TROO_ATK1, rest)
    [("S_TROO_ATK2", rest)] -> Just (S_TROO_ATK2, rest)
    [("S_TROO_ATK3", rest)] -> Just (S_TROO_ATK3, rest)
    [("S_TROO_PAIN", rest)] -> Just (S_TROO_PAIN, rest)
    [("S_TROO_PAIN2", rest)] -> Just (S_TROO_PAIN2, rest)
    [("S_TROO_DIE1", rest)] -> Just (S_TROO_DIE1, rest)
    [("S_TROO_DIE2", rest)] -> Just (S_TROO_DIE2, rest)
    [("S_TROO_DIE3", rest)] -> Just (S_TROO_DIE3, rest)
    [("S_TROO_DIE4", rest)] -> Just (S_TROO_DIE4, rest)
    [("S_TROO_DIE5", rest)] -> Just (S_TROO_DIE5, rest)
    [("S_TROO_XDIE1", rest)] -> Just (S_TROO_XDIE1, rest)
    [("S_TROO_XDIE2", rest)] -> Just (S_TROO_XDIE2, rest)
    [("S_TROO_XDIE3", rest)] -> Just (S_TROO_XDIE3, rest)
    [("S_TROO_XDIE4", rest)] -> Just (S_TROO_XDIE4, rest)
    [("S_TROO_XDIE5", rest)] -> Just (S_TROO_XDIE5, rest)
    [("S_TROO_XDIE6", rest)] -> Just (S_TROO_XDIE6, rest)
    [("S_TROO_XDIE7", rest)] -> Just (S_TROO_XDIE7, rest)
    [("S_TROO_XDIE8", rest)] -> Just (S_TROO_XDIE8, rest)
    [("S_TROO_RAISE1", rest)] -> Just (S_TROO_RAISE1, rest)
    [("S_TROO_RAISE2", rest)] -> Just (S_TROO_RAISE2, rest)
    [("S_TROO_RAISE3", rest)] -> Just (S_TROO_RAISE3, rest)
    [("S_TROO_RAISE4", rest)] -> Just (S_TROO_RAISE4, rest)
    [("S_TROO_RAISE5", rest)] -> Just (S_TROO_RAISE5, rest)
    [("S_SARG_STND", rest)] -> Just (S_SARG_STND, rest)
    [("S_SARG_STND2", rest)] -> Just (S_SARG_STND2, rest)
    [("S_SARG_RUN1", rest)] -> Just (S_SARG_RUN1, rest)
    [("S_SARG_RUN2", rest)] -> Just (S_SARG_RUN2, rest)
    [("S_SARG_RUN3", rest)] -> Just (S_SARG_RUN3, rest)
    [("S_SARG_RUN4", rest)] -> Just (S_SARG_RUN4, rest)
    [("S_SARG_RUN5", rest)] -> Just (S_SARG_RUN5, rest)
    [("S_SARG_RUN6", rest)] -> Just (S_SARG_RUN6, rest)
    [("S_SARG_RUN7", rest)] -> Just (S_SARG_RUN7, rest)
    [("S_SARG_RUN8", rest)] -> Just (S_SARG_RUN8, rest)
    [("S_SARG_ATK1", rest)] -> Just (S_SARG_ATK1, rest)
    [("S_SARG_ATK2", rest)] -> Just (S_SARG_ATK2, rest)
    [("S_SARG_ATK3", rest)] -> Just (S_SARG_ATK3, rest)
    [("S_SARG_PAIN", rest)] -> Just (S_SARG_PAIN, rest)
    [("S_SARG_PAIN2", rest)] -> Just (S_SARG_PAIN2, rest)
    [("S_SARG_DIE1", rest)] -> Just (S_SARG_DIE1, rest)
    [("S_SARG_DIE2", rest)] -> Just (S_SARG_DIE2, rest)
    [("S_SARG_DIE3", rest)] -> Just (S_SARG_DIE3, rest)
    [("S_SARG_DIE4", rest)] -> Just (S_SARG_DIE4, rest)
    [("S_SARG_DIE5", rest)] -> Just (S_SARG_DIE5, rest)
    [("S_SARG_DIE6", rest)] -> Just (S_SARG_DIE6, rest)
    [("S_SARG_RAISE1", rest)] -> Just (S_SARG_RAISE1, rest)
    [("S_SARG_RAISE2", rest)] -> Just (S_SARG_RAISE2, rest)
    [("S_SARG_RAISE3", rest)] -> Just (S_SARG_RAISE3, rest)
    [("S_SARG_RAISE4", rest)] -> Just (S_SARG_RAISE4, rest)
    [("S_SARG_RAISE5", rest)] -> Just (S_SARG_RAISE5, rest)
    [("S_SARG_RAISE6", rest)] -> Just (S_SARG_RAISE6, rest)
    [("S_HEAD_STND", rest)] -> Just (S_HEAD_STND, rest)
    [("S_HEAD_RUN1", rest)] -> Just (S_HEAD_RUN1, rest)
    [("S_HEAD_ATK1", rest)] -> Just (S_HEAD_ATK1, rest)
    [("S_HEAD_ATK2", rest)] -> Just (S_HEAD_ATK2, rest)
    [("S_HEAD_ATK3", rest)] -> Just (S_HEAD_ATK3, rest)
    [("S_HEAD_PAIN", rest)] -> Just (S_HEAD_PAIN, rest)
    [("S_HEAD_PAIN2", rest)] -> Just (S_HEAD_PAIN2, rest)
    [("S_HEAD_PAIN3", rest)] -> Just (S_HEAD_PAIN3, rest)
    [("S_HEAD_DIE1", rest)] -> Just (S_HEAD_DIE1, rest)
    [("S_HEAD_DIE2", rest)] -> Just (S_HEAD_DIE2, rest)
    [("S_HEAD_DIE3", rest)] -> Just (S_HEAD_DIE3, rest)
    [("S_HEAD_DIE4", rest)] -> Just (S_HEAD_DIE4, rest)
    [("S_HEAD_DIE5", rest)] -> Just (S_HEAD_DIE5, rest)
    [("S_HEAD_DIE6", rest)] -> Just (S_HEAD_DIE6, rest)
    [("S_HEAD_RAISE1", rest)] -> Just (S_HEAD_RAISE1, rest)
    [("S_HEAD_RAISE2", rest)] -> Just (S_HEAD_RAISE2, rest)
    [("S_HEAD_RAISE3", rest)] -> Just (S_HEAD_RAISE3, rest)
    [("S_HEAD_RAISE4", rest)] -> Just (S_HEAD_RAISE4, rest)
    [("S_HEAD_RAISE5", rest)] -> Just (S_HEAD_RAISE5, rest)
    [("S_HEAD_RAISE6", rest)] -> Just (S_HEAD_RAISE6, rest)
    [("S_BRBALL1", rest)] -> Just (S_BRBALL1, rest)
    [("S_BRBALL2", rest)] -> Just (S_BRBALL2, rest)
    [("S_BRBALLX1", rest)] -> Just (S_BRBALLX1, rest)
    [("S_BRBALLX2", rest)] -> Just (S_BRBALLX2, rest)
    [("S_BRBALLX3", rest)] -> Just (S_BRBALLX3, rest)
    [("S_BOSS_STND", rest)] -> Just (S_BOSS_STND, rest)
    [("S_BOSS_STND2", rest)] -> Just (S_BOSS_STND2, rest)
    [("S_BOSS_RUN1", rest)] -> Just (S_BOSS_RUN1, rest)
    [("S_BOSS_RUN2", rest)] -> Just (S_BOSS_RUN2, rest)
    [("S_BOSS_RUN3", rest)] -> Just (S_BOSS_RUN3, rest)
    [("S_BOSS_RUN4", rest)] -> Just (S_BOSS_RUN4, rest)
    [("S_BOSS_RUN5", rest)] -> Just (S_BOSS_RUN5, rest)
    [("S_BOSS_RUN6", rest)] -> Just (S_BOSS_RUN6, rest)
    [("S_BOSS_RUN7", rest)] -> Just (S_BOSS_RUN7, rest)
    [("S_BOSS_RUN8", rest)] -> Just (S_BOSS_RUN8, rest)
    [("S_BOSS_ATK1", rest)] -> Just (S_BOSS_ATK1, rest)
    [("S_BOSS_ATK2", rest)] -> Just (S_BOSS_ATK2, rest)
    [("S_BOSS_ATK3", rest)] -> Just (S_BOSS_ATK3, rest)
    [("S_BOSS_PAIN", rest)] -> Just (S_BOSS_PAIN, rest)
    [("S_BOSS_PAIN2", rest)] -> Just (S_BOSS_PAIN2, rest)
    [("S_BOSS_DIE1", rest)] -> Just (S_BOSS_DIE1, rest)
    [("S_BOSS_DIE2", rest)] -> Just (S_BOSS_DIE2, rest)
    [("S_BOSS_DIE3", rest)] -> Just (S_BOSS_DIE3, rest)
    [("S_BOSS_DIE4", rest)] -> Just (S_BOSS_DIE4, rest)
    [("S_BOSS_DIE5", rest)] -> Just (S_BOSS_DIE5, rest)
    [("S_BOSS_DIE6", rest)] -> Just (S_BOSS_DIE6, rest)
    [("S_BOSS_DIE7", rest)] -> Just (S_BOSS_DIE7, rest)
    [("S_BOSS_RAISE1", rest)] -> Just (S_BOSS_RAISE1, rest)
    [("S_BOSS_RAISE2", rest)] -> Just (S_BOSS_RAISE2, rest)
    [("S_BOSS_RAISE3", rest)] -> Just (S_BOSS_RAISE3, rest)
    [("S_BOSS_RAISE4", rest)] -> Just (S_BOSS_RAISE4, rest)
    [("S_BOSS_RAISE5", rest)] -> Just (S_BOSS_RAISE5, rest)
    [("S_BOSS_RAISE6", rest)] -> Just (S_BOSS_RAISE6, rest)
    [("S_BOSS_RAISE7", rest)] -> Just (S_BOSS_RAISE7, rest)
    [("S_BOS2_STND", rest)] -> Just (S_BOS2_STND, rest)
    [("S_BOS2_STND2", rest)] -> Just (S_BOS2_STND2, rest)
    [("S_BOS2_RUN1", rest)] -> Just (S_BOS2_RUN1, rest)
    [("S_BOS2_RUN2", rest)] -> Just (S_BOS2_RUN2, rest)
    [("S_BOS2_RUN3", rest)] -> Just (S_BOS2_RUN3, rest)
    [("S_BOS2_RUN4", rest)] -> Just (S_BOS2_RUN4, rest)
    [("S_BOS2_RUN5", rest)] -> Just (S_BOS2_RUN5, rest)
    [("S_BOS2_RUN6", rest)] -> Just (S_BOS2_RUN6, rest)
    [("S_BOS2_RUN7", rest)] -> Just (S_BOS2_RUN7, rest)
    [("S_BOS2_RUN8", rest)] -> Just (S_BOS2_RUN8, rest)
    [("S_BOS2_ATK1", rest)] -> Just (S_BOS2_ATK1, rest)
    [("S_BOS2_ATK2", rest)] -> Just (S_BOS2_ATK2, rest)
    [("S_BOS2_ATK3", rest)] -> Just (S_BOS2_ATK3, rest)
    [("S_BOS2_PAIN", rest)] -> Just (S_BOS2_PAIN, rest)
    [("S_BOS2_PAIN2", rest)] -> Just (S_BOS2_PAIN2, rest)
    [("S_BOS2_DIE1", rest)] -> Just (S_BOS2_DIE1, rest)
    [("S_BOS2_DIE2", rest)] -> Just (S_BOS2_DIE2, rest)
    [("S_BOS2_DIE3", rest)] -> Just (S_BOS2_DIE3, rest)
    [("S_BOS2_DIE4", rest)] -> Just (S_BOS2_DIE4, rest)
    [("S_BOS2_DIE5", rest)] -> Just (S_BOS2_DIE5, rest)
    [("S_BOS2_DIE6", rest)] -> Just (S_BOS2_DIE6, rest)
    [("S_BOS2_DIE7", rest)] -> Just (S_BOS2_DIE7, rest)
    [("S_BOS2_RAISE1", rest)] -> Just (S_BOS2_RAISE1, rest)
    [("S_BOS2_RAISE2", rest)] -> Just (S_BOS2_RAISE2, rest)
    [("S_BOS2_RAISE3", rest)] -> Just (S_BOS2_RAISE3, rest)
    [("S_BOS2_RAISE4", rest)] -> Just (S_BOS2_RAISE4, rest)
    [("S_BOS2_RAISE5", rest)] -> Just (S_BOS2_RAISE5, rest)
    [("S_BOS2_RAISE6", rest)] -> Just (S_BOS2_RAISE6, rest)
    [("S_BOS2_RAISE7", rest)] -> Just (S_BOS2_RAISE7, rest)
    [("S_SKULL_STND", rest)] -> Just (S_SKULL_STND, rest)
    [("S_SKULL_STND2", rest)] -> Just (S_SKULL_STND2, rest)
    [("S_SKULL_RUN1", rest)] -> Just (S_SKULL_RUN1, rest)
    [("S_SKULL_RUN2", rest)] -> Just (S_SKULL_RUN2, rest)
    [("S_SKULL_ATK1", rest)] -> Just (S_SKULL_ATK1, rest)
    [("S_SKULL_ATK2", rest)] -> Just (S_SKULL_ATK2, rest)
    [("S_SKULL_ATK3", rest)] -> Just (S_SKULL_ATK3, rest)
    [("S_SKULL_ATK4", rest)] -> Just (S_SKULL_ATK4, rest)
    [("S_SKULL_PAIN", rest)] -> Just (S_SKULL_PAIN, rest)
    [("S_SKULL_PAIN2", rest)] -> Just (S_SKULL_PAIN2, rest)
    [("S_SKULL_DIE1", rest)] -> Just (S_SKULL_DIE1, rest)
    [("S_SKULL_DIE2", rest)] -> Just (S_SKULL_DIE2, rest)
    [("S_SKULL_DIE3", rest)] -> Just (S_SKULL_DIE3, rest)
    [("S_SKULL_DIE4", rest)] -> Just (S_SKULL_DIE4, rest)
    [("S_SKULL_DIE5", rest)] -> Just (S_SKULL_DIE5, rest)
    [("S_SKULL_DIE6", rest)] -> Just (S_SKULL_DIE6, rest)
    [("S_SPID_STND", rest)] -> Just (S_SPID_STND, rest)
    [("S_SPID_STND2", rest)] -> Just (S_SPID_STND2, rest)
    [("S_SPID_RUN1", rest)] -> Just (S_SPID_RUN1, rest)
    [("S_SPID_RUN2", rest)] -> Just (S_SPID_RUN2, rest)
    [("S_SPID_RUN3", rest)] -> Just (S_SPID_RUN3, rest)
    [("S_SPID_RUN4", rest)] -> Just (S_SPID_RUN4, rest)
    [("S_SPID_RUN5", rest)] -> Just (S_SPID_RUN5, rest)
    [("S_SPID_RUN6", rest)] -> Just (S_SPID_RUN6, rest)
    [("S_SPID_RUN7", rest)] -> Just (S_SPID_RUN7, rest)
    [("S_SPID_RUN8", rest)] -> Just (S_SPID_RUN8, rest)
    [("S_SPID_RUN9", rest)] -> Just (S_SPID_RUN9, rest)
    [("S_SPID_RUN10", rest)] -> Just (S_SPID_RUN10, rest)
    [("S_SPID_RUN11", rest)] -> Just (S_SPID_RUN11, rest)
    [("S_SPID_RUN12", rest)] -> Just (S_SPID_RUN12, rest)
    [("S_SPID_ATK1", rest)] -> Just (S_SPID_ATK1, rest)
    [("S_SPID_ATK2", rest)] -> Just (S_SPID_ATK2, rest)
    [("S_SPID_ATK3", rest)] -> Just (S_SPID_ATK3, rest)
    [("S_SPID_ATK4", rest)] -> Just (S_SPID_ATK4, rest)
    [("S_SPID_PAIN", rest)] -> Just (S_SPID_PAIN, rest)
    [("S_SPID_PAIN2", rest)] -> Just (S_SPID_PAIN2, rest)
    [("S_SPID_DIE1", rest)] -> Just (S_SPID_DIE1, rest)
    [("S_SPID_DIE2", rest)] -> Just (S_SPID_DIE2, rest)
    [("S_SPID_DIE3", rest)] -> Just (S_SPID_DIE3, rest)
    [("S_SPID_DIE4", rest)] -> Just (S_SPID_DIE4, rest)
    [("S_SPID_DIE5", rest)] -> Just (S_SPID_DIE5, rest)
    [("S_SPID_DIE6", rest)] -> Just (S_SPID_DIE6, rest)
    [("S_SPID_DIE7", rest)] -> Just (S_SPID_DIE7, rest)
    [("S_SPID_DIE8", rest)] -> Just (S_SPID_DIE8, rest)
    [("S_SPID_DIE9", rest)] -> Just (S_SPID_DIE9, rest)
    [("S_SPID_DIE10", rest)] -> Just (S_SPID_DIE10, rest)
    [("S_SPID_DIE11", rest)] -> Just (S_SPID_DIE11, rest)
    [("S_BSPI_STND", rest)] -> Just (S_BSPI_STND, rest)
    [("S_BSPI_STND2", rest)] -> Just (S_BSPI_STND2, rest)
    [("S_BSPI_SIGHT", rest)] -> Just (S_BSPI_SIGHT, rest)
    [("S_BSPI_RUN1", rest)] -> Just (S_BSPI_RUN1, rest)
    [("S_BSPI_RUN2", rest)] -> Just (S_BSPI_RUN2, rest)
    [("S_BSPI_RUN3", rest)] -> Just (S_BSPI_RUN3, rest)
    [("S_BSPI_RUN4", rest)] -> Just (S_BSPI_RUN4, rest)
    [("S_BSPI_RUN5", rest)] -> Just (S_BSPI_RUN5, rest)
    [("S_BSPI_RUN6", rest)] -> Just (S_BSPI_RUN6, rest)
    [("S_BSPI_RUN7", rest)] -> Just (S_BSPI_RUN7, rest)
    [("S_BSPI_RUN8", rest)] -> Just (S_BSPI_RUN8, rest)
    [("S_BSPI_RUN9", rest)] -> Just (S_BSPI_RUN9, rest)
    [("S_BSPI_RUN10", rest)] -> Just (S_BSPI_RUN10, rest)
    [("S_BSPI_RUN11", rest)] -> Just (S_BSPI_RUN11, rest)
    [("S_BSPI_RUN12", rest)] -> Just (S_BSPI_RUN12, rest)
    [("S_BSPI_ATK1", rest)] -> Just (S_BSPI_ATK1, rest)
    [("S_BSPI_ATK2", rest)] -> Just (S_BSPI_ATK2, rest)
    [("S_BSPI_ATK3", rest)] -> Just (S_BSPI_ATK3, rest)
    [("S_BSPI_ATK4", rest)] -> Just (S_BSPI_ATK4, rest)
    [("S_BSPI_PAIN", rest)] -> Just (S_BSPI_PAIN, rest)
    [("S_BSPI_PAIN2", rest)] -> Just (S_BSPI_PAIN2, rest)
    [("S_BSPI_DIE1", rest)] -> Just (S_BSPI_DIE1, rest)
    [("S_BSPI_DIE2", rest)] -> Just (S_BSPI_DIE2, rest)
    [("S_BSPI_DIE3", rest)] -> Just (S_BSPI_DIE3, rest)
    [("S_BSPI_DIE4", rest)] -> Just (S_BSPI_DIE4, rest)
    [("S_BSPI_DIE5", rest)] -> Just (S_BSPI_DIE5, rest)
    [("S_BSPI_DIE6", rest)] -> Just (S_BSPI_DIE6, rest)
    [("S_BSPI_DIE7", rest)] -> Just (S_BSPI_DIE7, rest)
    [("S_BSPI_RAISE1", rest)] -> Just (S_BSPI_RAISE1, rest)
    [("S_BSPI_RAISE2", rest)] -> Just (S_BSPI_RAISE2, rest)
    [("S_BSPI_RAISE3", rest)] -> Just (S_BSPI_RAISE3, rest)
    [("S_BSPI_RAISE4", rest)] -> Just (S_BSPI_RAISE4, rest)
    [("S_BSPI_RAISE5", rest)] -> Just (S_BSPI_RAISE5, rest)
    [("S_BSPI_RAISE6", rest)] -> Just (S_BSPI_RAISE6, rest)
    [("S_BSPI_RAISE7", rest)] -> Just (S_BSPI_RAISE7, rest)
    [("S_ARACH_PLAZ", rest)] -> Just (S_ARACH_PLAZ, rest)
    [("S_ARACH_PLAZ2", rest)] -> Just (S_ARACH_PLAZ2, rest)
    [("S_ARACH_PLEX", rest)] -> Just (S_ARACH_PLEX, rest)
    [("S_ARACH_PLEX2", rest)] -> Just (S_ARACH_PLEX2, rest)
    [("S_ARACH_PLEX3", rest)] -> Just (S_ARACH_PLEX3, rest)
    [("S_ARACH_PLEX4", rest)] -> Just (S_ARACH_PLEX4, rest)
    [("S_ARACH_PLEX5", rest)] -> Just (S_ARACH_PLEX5, rest)
    [("S_CYBER_STND", rest)] -> Just (S_CYBER_STND, rest)
    [("S_CYBER_STND2", rest)] -> Just (S_CYBER_STND2, rest)
    [("S_CYBER_RUN1", rest)] -> Just (S_CYBER_RUN1, rest)
    [("S_CYBER_RUN2", rest)] -> Just (S_CYBER_RUN2, rest)
    [("S_CYBER_RUN3", rest)] -> Just (S_CYBER_RUN3, rest)
    [("S_CYBER_RUN4", rest)] -> Just (S_CYBER_RUN4, rest)
    [("S_CYBER_RUN5", rest)] -> Just (S_CYBER_RUN5, rest)
    [("S_CYBER_RUN6", rest)] -> Just (S_CYBER_RUN6, rest)
    [("S_CYBER_RUN7", rest)] -> Just (S_CYBER_RUN7, rest)
    [("S_CYBER_RUN8", rest)] -> Just (S_CYBER_RUN8, rest)
    [("S_CYBER_ATK1", rest)] -> Just (S_CYBER_ATK1, rest)
    [("S_CYBER_ATK2", rest)] -> Just (S_CYBER_ATK2, rest)
    [("S_CYBER_ATK3", rest)] -> Just (S_CYBER_ATK3, rest)
    [("S_CYBER_ATK4", rest)] -> Just (S_CYBER_ATK4, rest)
    [("S_CYBER_ATK5", rest)] -> Just (S_CYBER_ATK5, rest)
    [("S_CYBER_ATK6", rest)] -> Just (S_CYBER_ATK6, rest)
    [("S_CYBER_PAIN", rest)] -> Just (S_CYBER_PAIN, rest)
    [("S_CYBER_DIE1", rest)] -> Just (S_CYBER_DIE1, rest)
    [("S_CYBER_DIE2", rest)] -> Just (S_CYBER_DIE2, rest)
    [("S_CYBER_DIE3", rest)] -> Just (S_CYBER_DIE3, rest)
    [("S_CYBER_DIE4", rest)] -> Just (S_CYBER_DIE4, rest)
    [("S_CYBER_DIE5", rest)] -> Just (S_CYBER_DIE5, rest)
    [("S_CYBER_DIE6", rest)] -> Just (S_CYBER_DIE6, rest)
    [("S_CYBER_DIE7", rest)] -> Just (S_CYBER_DIE7, rest)
    [("S_CYBER_DIE8", rest)] -> Just (S_CYBER_DIE8, rest)
    [("S_CYBER_DIE9", rest)] -> Just (S_CYBER_DIE9, rest)
    [("S_CYBER_DIE10", rest)] -> Just (S_CYBER_DIE10, rest)
    [("S_PAIN_STND", rest)] -> Just (S_PAIN_STND, rest)
    [("S_PAIN_RUN1", rest)] -> Just (S_PAIN_RUN1, rest)
    [("S_PAIN_RUN2", rest)] -> Just (S_PAIN_RUN2, rest)
    [("S_PAIN_RUN3", rest)] -> Just (S_PAIN_RUN3, rest)
    [("S_PAIN_RUN4", rest)] -> Just (S_PAIN_RUN4, rest)
    [("S_PAIN_RUN5", rest)] -> Just (S_PAIN_RUN5, rest)
    [("S_PAIN_RUN6", rest)] -> Just (S_PAIN_RUN6, rest)
    [("S_PAIN_ATK1", rest)] -> Just (S_PAIN_ATK1, rest)
    [("S_PAIN_ATK2", rest)] -> Just (S_PAIN_ATK2, rest)
    [("S_PAIN_ATK3", rest)] -> Just (S_PAIN_ATK3, rest)
    [("S_PAIN_ATK4", rest)] -> Just (S_PAIN_ATK4, rest)
    [("S_PAIN_PAIN", rest)] -> Just (S_PAIN_PAIN, rest)
    [("S_PAIN_PAIN2", rest)] -> Just (S_PAIN_PAIN2, rest)
    [("S_PAIN_DIE1", rest)] -> Just (S_PAIN_DIE1, rest)
    [("S_PAIN_DIE2", rest)] -> Just (S_PAIN_DIE2, rest)
    [("S_PAIN_DIE3", rest)] -> Just (S_PAIN_DIE3, rest)
    [("S_PAIN_DIE4", rest)] -> Just (S_PAIN_DIE4, rest)
    [("S_PAIN_DIE5", rest)] -> Just (S_PAIN_DIE5, rest)
    [("S_PAIN_DIE6", rest)] -> Just (S_PAIN_DIE6, rest)
    [("S_PAIN_RAISE1", rest)] -> Just (S_PAIN_RAISE1, rest)
    [("S_PAIN_RAISE2", rest)] -> Just (S_PAIN_RAISE2, rest)
    [("S_PAIN_RAISE3", rest)] -> Just (S_PAIN_RAISE3, rest)
    [("S_PAIN_RAISE4", rest)] -> Just (S_PAIN_RAISE4, rest)
    [("S_PAIN_RAISE5", rest)] -> Just (S_PAIN_RAISE5, rest)
    [("S_PAIN_RAISE6", rest)] -> Just (S_PAIN_RAISE6, rest)
    [("S_SSWV_STND", rest)] -> Just (S_SSWV_STND, rest)
    [("S_SSWV_STND2", rest)] -> Just (S_SSWV_STND2, rest)
    [("S_SSWV_RUN1", rest)] -> Just (S_SSWV_RUN1, rest)
    [("S_SSWV_RUN2", rest)] -> Just (S_SSWV_RUN2, rest)
    [("S_SSWV_RUN3", rest)] -> Just (S_SSWV_RUN3, rest)
    [("S_SSWV_RUN4", rest)] -> Just (S_SSWV_RUN4, rest)
    [("S_SSWV_RUN5", rest)] -> Just (S_SSWV_RUN5, rest)
    [("S_SSWV_RUN6", rest)] -> Just (S_SSWV_RUN6, rest)
    [("S_SSWV_RUN7", rest)] -> Just (S_SSWV_RUN7, rest)
    [("S_SSWV_RUN8", rest)] -> Just (S_SSWV_RUN8, rest)
    [("S_SSWV_ATK1", rest)] -> Just (S_SSWV_ATK1, rest)
    [("S_SSWV_ATK2", rest)] -> Just (S_SSWV_ATK2, rest)
    [("S_SSWV_ATK3", rest)] -> Just (S_SSWV_ATK3, rest)
    [("S_SSWV_ATK4", rest)] -> Just (S_SSWV_ATK4, rest)
    [("S_SSWV_ATK5", rest)] -> Just (S_SSWV_ATK5, rest)
    [("S_SSWV_ATK6", rest)] -> Just (S_SSWV_ATK6, rest)
    [("S_SSWV_PAIN", rest)] -> Just (S_SSWV_PAIN, rest)
    [("S_SSWV_PAIN2", rest)] -> Just (S_SSWV_PAIN2, rest)
    [("S_SSWV_DIE1", rest)] -> Just (S_SSWV_DIE1, rest)
    [("S_SSWV_DIE2", rest)] -> Just (S_SSWV_DIE2, rest)
    [("S_SSWV_DIE3", rest)] -> Just (S_SSWV_DIE3, rest)
    [("S_SSWV_DIE4", rest)] -> Just (S_SSWV_DIE4, rest)
    [("S_SSWV_DIE5", rest)] -> Just (S_SSWV_DIE5, rest)
    [("S_SSWV_XDIE1", rest)] -> Just (S_SSWV_XDIE1, rest)
    [("S_SSWV_XDIE2", rest)] -> Just (S_SSWV_XDIE2, rest)
    [("S_SSWV_XDIE3", rest)] -> Just (S_SSWV_XDIE3, rest)
    [("S_SSWV_XDIE4", rest)] -> Just (S_SSWV_XDIE4, rest)
    [("S_SSWV_XDIE5", rest)] -> Just (S_SSWV_XDIE5, rest)
    [("S_SSWV_XDIE6", rest)] -> Just (S_SSWV_XDIE6, rest)
    [("S_SSWV_XDIE7", rest)] -> Just (S_SSWV_XDIE7, rest)
    [("S_SSWV_XDIE8", rest)] -> Just (S_SSWV_XDIE8, rest)
    [("S_SSWV_XDIE9", rest)] -> Just (S_SSWV_XDIE9, rest)
    [("S_SSWV_RAISE1", rest)] -> Just (S_SSWV_RAISE1, rest)
    [("S_SSWV_RAISE2", rest)] -> Just (S_SSWV_RAISE2, rest)
    [("S_SSWV_RAISE3", rest)] -> Just (S_SSWV_RAISE3, rest)
    [("S_SSWV_RAISE4", rest)] -> Just (S_SSWV_RAISE4, rest)
    [("S_SSWV_RAISE5", rest)] -> Just (S_SSWV_RAISE5, rest)
    [("S_KEENSTND", rest)] -> Just (S_KEENSTND, rest)
    [("S_COMMKEEN", rest)] -> Just (S_COMMKEEN, rest)
    [("S_COMMKEEN2", rest)] -> Just (S_COMMKEEN2, rest)
    [("S_COMMKEEN3", rest)] -> Just (S_COMMKEEN3, rest)
    [("S_COMMKEEN4", rest)] -> Just (S_COMMKEEN4, rest)
    [("S_COMMKEEN5", rest)] -> Just (S_COMMKEEN5, rest)
    [("S_COMMKEEN6", rest)] -> Just (S_COMMKEEN6, rest)
    [("S_COMMKEEN7", rest)] -> Just (S_COMMKEEN7, rest)
    [("S_COMMKEEN8", rest)] -> Just (S_COMMKEEN8, rest)
    [("S_COMMKEEN9", rest)] -> Just (S_COMMKEEN9, rest)
    [("S_COMMKEEN10", rest)] -> Just (S_COMMKEEN10, rest)
    [("S_COMMKEEN11", rest)] -> Just (S_COMMKEEN11, rest)
    [("S_COMMKEEN12", rest)] -> Just (S_COMMKEEN12, rest)
    [("S_KEENPAIN", rest)] -> Just (S_KEENPAIN, rest)
    [("S_KEENPAIN2", rest)] -> Just (S_KEENPAIN2, rest)
    [("S_BRAIN", rest)] -> Just (S_BRAIN, rest)
    [("S_BRAIN_PAIN", rest)] -> Just (S_BRAIN_PAIN, rest)
    [("S_BRAIN_DIE1", rest)] -> Just (S_BRAIN_DIE1, rest)
    [("S_BRAIN_DIE2", rest)] -> Just (S_BRAIN_DIE2, rest)
    [("S_BRAIN_DIE3", rest)] -> Just (S_BRAIN_DIE3, rest)
    [("S_BRAIN_DIE4", rest)] -> Just (S_BRAIN_DIE4, rest)
    [("S_BRAINEYE", rest)] -> Just (S_BRAINEYE, rest)
    [("S_BRAINEYESEE", rest)] -> Just (S_BRAINEYESEE, rest)
    [("S_BRAINEYE1", rest)] -> Just (S_BRAINEYE1, rest)
    [("S_SPAWN1", rest)] -> Just (S_SPAWN1, rest)
    [("S_SPAWN2", rest)] -> Just (S_SPAWN2, rest)
    [("S_SPAWN3", rest)] -> Just (S_SPAWN3, rest)
    [("S_SPAWN4", rest)] -> Just (S_SPAWN4, rest)
    [("S_SPAWNFIRE1", rest)] -> Just (S_SPAWNFIRE1, rest)
    [("S_SPAWNFIRE2", rest)] -> Just (S_SPAWNFIRE2, rest)
    [("S_SPAWNFIRE3", rest)] -> Just (S_SPAWNFIRE3, rest)
    [("S_SPAWNFIRE4", rest)] -> Just (S_SPAWNFIRE4, rest)
    [("S_SPAWNFIRE5", rest)] -> Just (S_SPAWNFIRE5, rest)
    [("S_SPAWNFIRE6", rest)] -> Just (S_SPAWNFIRE6, rest)
    [("S_SPAWNFIRE7", rest)] -> Just (S_SPAWNFIRE7, rest)
    [("S_SPAWNFIRE8", rest)] -> Just (S_SPAWNFIRE8, rest)
    [("S_BRAINEXPLODE1", rest)] -> Just (S_BRAINEXPLODE1, rest)
    [("S_BRAINEXPLODE2", rest)] -> Just (S_BRAINEXPLODE2, rest)
    [("S_BRAINEXPLODE3", rest)] -> Just (S_BRAINEXPLODE3, rest)
    [("S_ARM1", rest)] -> Just (S_ARM1, rest)
    [("S_ARM1A", rest)] -> Just (S_ARM1A, rest)
    [("S_ARM2", rest)] -> Just (S_ARM2, rest)
    [("S_ARM2A", rest)] -> Just (S_ARM2A, rest)
    [("S_BAR1", rest)] -> Just (S_BAR1, rest)
    [("S_BAR2", rest)] -> Just (S_BAR2, rest)
    [("S_BEXP", rest)] -> Just (S_BEXP, rest)
    [("S_BEXP2", rest)] -> Just (S_BEXP2, rest)
    [("S_BEXP3", rest)] -> Just (S_BEXP3, rest)
    [("S_BEXP4", rest)] -> Just (S_BEXP4, rest)
    [("S_BEXP5", rest)] -> Just (S_BEXP5, rest)
    [("S_BBAR1", rest)] -> Just (S_BBAR1, rest)
    [("S_BBAR2", rest)] -> Just (S_BBAR2, rest)
    [("S_BBAR3", rest)] -> Just (S_BBAR3, rest)
    [("S_BON1", rest)] -> Just (S_BON1, rest)
    [("S_BON1A", rest)] -> Just (S_BON1A, rest)
    [("S_BON1B", rest)] -> Just (S_BON1B, rest)
    [("S_BON1C", rest)] -> Just (S_BON1C, rest)
    [("S_BON1D", rest)] -> Just (S_BON1D, rest)
    [("S_BON1E", rest)] -> Just (S_BON1E, rest)
    [("S_BON2", rest)] -> Just (S_BON2, rest)
    [("S_BON2A", rest)] -> Just (S_BON2A, rest)
    [("S_BON2B", rest)] -> Just (S_BON2B, rest)
    [("S_BON2C", rest)] -> Just (S_BON2C, rest)
    [("S_BON2D", rest)] -> Just (S_BON2D, rest)
    [("S_BON2E", rest)] -> Just (S_BON2E, rest)
    [("S_BKEY", rest)] -> Just (S_BKEY, rest)
    [("S_BKEY2", rest)] -> Just (S_BKEY2, rest)
    [("S_RKEY", rest)] -> Just (S_RKEY, rest)
    [("S_RKEY2", rest)] -> Just (S_RKEY2, rest)
    [("S_YKEY", rest)] -> Just (S_YKEY, rest)
    [("S_YKEY2", rest)] -> Just (S_YKEY2, rest)
    [("S_BSKULL", rest)] -> Just (S_BSKULL, rest)
    [("S_BSKULL2", rest)] -> Just (S_BSKULL2, rest)
    [("S_RSKULL", rest)] -> Just (S_RSKULL, rest)
    [("S_RSKULL2", rest)] -> Just (S_RSKULL2, rest)
    [("S_YSKULL", rest)] -> Just (S_YSKULL, rest)
    [("S_YSKULL2", rest)] -> Just (S_YSKULL2, rest)
    [("S_STIM", rest)] -> Just (S_STIM, rest)
    [("S_MEDI", rest)] -> Just (S_MEDI, rest)
    [("S_SOUL", rest)] -> Just (S_SOUL, rest)
    [("S_SOUL2", rest)] -> Just (S_SOUL2, rest)
    [("S_SOUL3", rest)] -> Just (S_SOUL3, rest)
    [("S_SOUL4", rest)] -> Just (S_SOUL4, rest)
    [("S_SOUL5", rest)] -> Just (S_SOUL5, rest)
    [("S_SOUL6", rest)] -> Just (S_SOUL6, rest)
    [("S_PINV", rest)] -> Just (S_PINV, rest)
    [("S_PINV2", rest)] -> Just (S_PINV2, rest)
    [("S_PINV3", rest)] -> Just (S_PINV3, rest)
    [("S_PINV4", rest)] -> Just (S_PINV4, rest)
    [("S_PSTR", rest)] -> Just (S_PSTR, rest)
    [("S_PINS", rest)] -> Just (S_PINS, rest)
    [("S_PINS2", rest)] -> Just (S_PINS2, rest)
    [("S_PINS3", rest)] -> Just (S_PINS3, rest)
    [("S_PINS4", rest)] -> Just (S_PINS4, rest)
    [("S_MEGA", rest)] -> Just (S_MEGA, rest)
    [("S_MEGA2", rest)] -> Just (S_MEGA2, rest)
    [("S_MEGA3", rest)] -> Just (S_MEGA3, rest)
    [("S_MEGA4", rest)] -> Just (S_MEGA4, rest)
    [("S_SUIT", rest)] -> Just (S_SUIT, rest)
    [("S_PMAP", rest)] -> Just (S_PMAP, rest)
    [("S_PMAP2", rest)] -> Just (S_PMAP2, rest)
    [("S_PMAP3", rest)] -> Just (S_PMAP3, rest)
    [("S_PMAP4", rest)] -> Just (S_PMAP4, rest)
    [("S_PMAP5", rest)] -> Just (S_PMAP5, rest)
    [("S_PMAP6", rest)] -> Just (S_PMAP6, rest)
    [("S_PVIS", rest)] -> Just (S_PVIS, rest)
    [("S_PVIS2", rest)] -> Just (S_PVIS2, rest)
    [("S_CLIP", rest)] -> Just (S_CLIP, rest)
    [("S_AMMO", rest)] -> Just (S_AMMO, rest)
    [("S_ROCK", rest)] -> Just (S_ROCK, rest)
    [("S_BROK", rest)] -> Just (S_BROK, rest)
    [("S_CELL", rest)] -> Just (S_CELL, rest)
    [("S_CELP", rest)] -> Just (S_CELP, rest)
    [("S_SHEL", rest)] -> Just (S_SHEL, rest)
    [("S_SBOX", rest)] -> Just (S_SBOX, rest)
    [("S_BPAK", rest)] -> Just (S_BPAK, rest)
    [("S_BFUG", rest)] -> Just (S_BFUG, rest)
    [("S_MGUN", rest)] -> Just (S_MGUN, rest)
    [("S_CSAW", rest)] -> Just (S_CSAW, rest)
    [("S_LAUN", rest)] -> Just (S_LAUN, rest)
    [("S_PLAS", rest)] -> Just (S_PLAS, rest)
    [("S_SHOT", rest)] -> Just (S_SHOT, rest)
    [("S_SHOT2", rest)] -> Just (S_SHOT2, rest)
    [("S_COLU", rest)] -> Just (S_COLU, rest)
    [("S_STALAG", rest)] -> Just (S_STALAG, rest)
    [("S_BLOODYTWITCH", rest)] -> Just (S_BLOODYTWITCH, rest)
    [("S_BLOODYTWITCH2", rest)] -> Just (S_BLOODYTWITCH2, rest)
    [("S_BLOODYTWITCH3", rest)] -> Just (S_BLOODYTWITCH3, rest)
    [("S_BLOODYTWITCH4", rest)] -> Just (S_BLOODYTWITCH4, rest)
    [("S_DEADTORSO", rest)] -> Just (S_DEADTORSO, rest)
    [("S_DEADBOTTOM", rest)] -> Just (S_DEADBOTTOM, rest)
    [("S_HEADSONSTICK", rest)] -> Just (S_HEADSONSTICK, rest)
    [("S_GIBS", rest)] -> Just (S_GIBS, rest)
    [("S_HEADONASTICK", rest)] -> Just (S_HEADONASTICK, rest)
    [("S_HEADCANDLES", rest)] -> Just (S_HEADCANDLES, rest)
    [("S_HEADCANDLES2", rest)] -> Just (S_HEADCANDLES2, rest)
    [("S_DEADSTICK", rest)] -> Just (S_DEADSTICK, rest)
    [("S_LIVESTICK", rest)] -> Just (S_LIVESTICK, rest)
    [("S_LIVESTICK2", rest)] -> Just (S_LIVESTICK2, rest)
    [("S_MEAT2", rest)] -> Just (S_MEAT2, rest)
    [("S_MEAT3", rest)] -> Just (S_MEAT3, rest)
    [("S_MEAT4", rest)] -> Just (S_MEAT4, rest)
    [("S_MEAT5", rest)] -> Just (S_MEAT5, rest)
    [("S_STALAGTITE", rest)] -> Just (S_STALAGTITE, rest)
    [("S_TALLGRNCOL", rest)] -> Just (S_TALLGRNCOL, rest)
    [("S_SHRTGRNCOL", rest)] -> Just (S_SHRTGRNCOL, rest)
    [("S_TALLREDCOL", rest)] -> Just (S_TALLREDCOL, rest)
    [("S_SHRTREDCOL", rest)] -> Just (S_SHRTREDCOL, rest)
    [("S_CANDLESTIK", rest)] -> Just (S_CANDLESTIK, rest)
    [("S_CANDELABRA", rest)] -> Just (S_CANDELABRA, rest)
    [("S_SKULLCOL", rest)] -> Just (S_SKULLCOL, rest)
    [("S_TORCHTREE", rest)] -> Just (S_TORCHTREE, rest)
    [("S_BIGTREE", rest)] -> Just (S_BIGTREE, rest)
    [("S_TECHPILLAR", rest)] -> Just (S_TECHPILLAR, rest)
    [("S_EVILEYE", rest)] -> Just (S_EVILEYE, rest)
    [("S_EVILEYE2", rest)] -> Just (S_EVILEYE2, rest)
    [("S_EVILEYE3", rest)] -> Just (S_EVILEYE3, rest)
    [("S_EVILEYE4", rest)] -> Just (S_EVILEYE4, rest)
    [("S_FLOATSKULL", rest)] -> Just (S_FLOATSKULL, rest)
    [("S_FLOATSKULL2", rest)] -> Just (S_FLOATSKULL2, rest)
    [("S_FLOATSKULL3", rest)] -> Just (S_FLOATSKULL3, rest)
    [("S_HEARTCOL", rest)] -> Just (S_HEARTCOL, rest)
    [("S_HEARTCOL2", rest)] -> Just (S_HEARTCOL2, rest)
    [("S_BLUETORCH", rest)] -> Just (S_BLUETORCH, rest)
    [("S_BLUETORCH2", rest)] -> Just (S_BLUETORCH2, rest)
    [("S_BLUETORCH3", rest)] -> Just (S_BLUETORCH3, rest)
    [("S_BLUETORCH4", rest)] -> Just (S_BLUETORCH4, rest)
    [("S_GREENTORCH", rest)] -> Just (S_GREENTORCH, rest)
    [("S_GREENTORCH2", rest)] -> Just (S_GREENTORCH2, rest)
    [("S_GREENTORCH3", rest)] -> Just (S_GREENTORCH3, rest)
    [("S_GREENTORCH4", rest)] -> Just (S_GREENTORCH4, rest)
    [("S_REDTORCH", rest)] -> Just (S_REDTORCH, rest)
    [("S_REDTORCH2", rest)] -> Just (S_REDTORCH2, rest)
    [("S_REDTORCH3", rest)] -> Just (S_REDTORCH3, rest)
    [("S_REDTORCH4", rest)] -> Just (S_REDTORCH4, rest)
    [("S_BTORCHSHRT", rest)] -> Just (S_BTORCHSHRT, rest)
    [("S_BTORCHSHRT2", rest)] -> Just (S_BTORCHSHRT2, rest)
    [("S_BTORCHSHRT3", rest)] -> Just (S_BTORCHSHRT3, rest)
    [("S_BTORCHSHRT4", rest)] -> Just (S_BTORCHSHRT4, rest)
    [("S_GTORCHSHRT", rest)] -> Just (S_GTORCHSHRT, rest)
    [("S_GTORCHSHRT2", rest)] -> Just (S_GTORCHSHRT2, rest)
    [("S_GTORCHSHRT3", rest)] -> Just (S_GTORCHSHRT3, rest)
    [("S_GTORCHSHRT4", rest)] -> Just (S_GTORCHSHRT4, rest)
    [("S_RTORCHSHRT", rest)] -> Just (S_RTORCHSHRT, rest)
    [("S_RTORCHSHRT2", rest)] -> Just (S_RTORCHSHRT2, rest)
    [("S_RTORCHSHRT3", rest)] -> Just (S_RTORCHSHRT3, rest)
    [("S_RTORCHSHRT4", rest)] -> Just (S_RTORCHSHRT4, rest)
    [("S_HANGNOGUTS", rest)] -> Just (S_HANGNOGUTS, rest)
    [("S_HANGBNOBRAIN", rest)] -> Just (S_HANGBNOBRAIN, rest)
    [("S_HANGTLOOKDN", rest)] -> Just (S_HANGTLOOKDN, rest)
    [("S_HANGTSKULL", rest)] -> Just (S_HANGTSKULL, rest)
    [("S_HANGTLOOKUP", rest)] -> Just (S_HANGTLOOKUP, rest)
    [("S_HANGTNOBRAIN", rest)] -> Just (S_HANGTNOBRAIN, rest)
    [("S_COLONGIBS", rest)] -> Just (S_COLONGIBS, rest)
    [("S_SMALLPOOL", rest)] -> Just (S_SMALLPOOL, rest)
    [("S_BRAINSTEM", rest)] -> Just (S_BRAINSTEM, rest)
    [("S_TECHLAMP", rest)] -> Just (S_TECHLAMP, rest)
    [("S_TECHLAMP2", rest)] -> Just (S_TECHLAMP2, rest)
    [("S_TECHLAMP3", rest)] -> Just (S_TECHLAMP3, rest)
    [("S_TECHLAMP4", rest)] -> Just (S_TECHLAMP4, rest)
    [("S_TECH2LAMP", rest)] -> Just (S_TECH2LAMP, rest)
    [("S_TECH2LAMP2", rest)] -> Just (S_TECH2LAMP2, rest)
    [("S_TECH2LAMP3", rest)] -> Just (S_TECH2LAMP3, rest)
    [("S_TECH2LAMP4", rest)] -> Just (S_TECH2LAMP4, rest)
    _ -> Nothing

instance Read StateName where
    readsPrec _ = maybe [] (:[]) . parseStateName

instance Bounded StateName where
    minBound = StateName 0
    maxBound = StateName 966

instance Enum StateName where
    fromEnum (StateName i) = i
    toEnum i =
        let limit = fromEnum (maxBound :: StateName) in
        if 0 <= i && i <= limit
            then StateName i
            else error $ "toEnum{StateName}: tag (" ++ show i ++ ") is out of range [0," ++ show limit ++ "]"
