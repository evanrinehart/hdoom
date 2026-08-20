module Ticcmd where

import Data.Word
import Data.Int
import Data.Primitive.ByteArray
import Control.Monad.ST
import qualified Data.ByteString as BS
import Data.ByteString (ByteString)
import Control.Monad (guard)

import LoadWord
import PackWord

-- a player's control state at a given time
-- used for netgame and demos and singleplayer

data Ticcmd = Ticcmd
    { ticcmd_forward :: Int8
    , ticcmd_sidemove :: Int8
    , ticcmd_angleturn :: Int16
    , ticcmd_consistancy :: Int16
    , ticcmd_chatchar :: Word8
    , ticcmd_buttons :: Word8 }
        deriving (Show,Read,Eq)

-- suitable when reading unknown blob from network or demo file
parseTiccmd :: ByteString -> Maybe (Ticcmd, ByteString)
parseTiccmd bs = do
    guard (BS.length bs >= 8)
    let (prefix,rest) = BS.splitAt 8 bs
    let fwd = loadInt8 0 bs
    let side = loadInt8 1 bs
    let turn = loadInt16LE 2 bs
    let consistancy = loadInt16LE 4 bs
    let chatchar = loadWord8 6 bs
    let buttons = loadWord8 7 bs
    pure (Ticcmd fwd side turn consistancy chatchar buttons, rest)



-- a packed form
newtype PackedTiccmd = PackedTiccmd ByteArray
    deriving (Show,Eq)

packTiccmd :: Ticcmd -> PackedTiccmd
packTiccmd (Ticcmd fwd side turn consistancy chatchar buttons) = PackedTiccmd bytes where
    bytes = createByteArray 8 $ \mut -> do
        putInt8 mut 0 fwd
        putInt8 mut 1 side
        putInt16BE mut 2 turn
        putInt16BE mut 4 consistancy
        putWord8 mut 6 chatchar
        putWord8 mut 7 buttons

-- as long as PackedTiccmd constructor is only ever used by packTiccmd it's safe
unpackTiccmd :: PackedTiccmd -> Ticcmd
unpackTiccmd (PackedTiccmd bytes) =
    Ticcmd
        (getInt8 bytes 0)
        (getInt8 bytes 1)
        (getInt16BE bytes 2)
        (getInt16BE bytes 4)
        (getWord8 bytes 6)
        (getWord8 bytes 7)
