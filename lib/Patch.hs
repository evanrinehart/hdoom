module Patch where

import qualified Data.ByteString as BS
import Data.ByteString (ByteString)
import Data.ByteString.Unsafe (unsafeIndex)
import Data.Vector.Primitive (Vector)
import Data.Primitive.ByteArray

-- a patch is an 8-bit color image, but only
-- the visible pixels are stored in vertical strips

data Patch = Patch
    { header :: PatchHeader
    , columns :: [PatchColumn] }
        deriving Show

data PatchHeader = PatchHeader
    { width :: !Int
    , height :: !Int
    , leftoff :: !Int
    , topoff :: !Int
    , columnoffs :: !(Vector Int) }
        deriving Show

data PatchColumn = PatchColumn
    { column_x :: !Int
    , column_posts :: [Post] }
        deriving Show

data Post = Post !Int !Int !ByteArray
    deriving Show

makePost :: Int -> ByteString -> Post
makePost topdelta blob = Post topdelta (BS.length blob) (bsToByteArray blob)

bsToByteArray :: ByteString -> ByteArray
bsToByteArray bs =
    let n = BS.length bs in
    createByteArray n $ \arr -> do
        mapM_ (\i -> writeByteArray arr i (unsafeIndex bs i)) [0 .. n-1]
