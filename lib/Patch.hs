module Patch where

import Data.Vector.Primitive (Vector)
import Data.ByteString.Short (ShortByteString)

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

data Post = Post !Int !ShortByteString
    deriving Show
