{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE BangPatterns #-}
module Loader where

import System.IO (Handle)
import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import qualified Data.Vector.Primitive as VP
import Data.Vector.Primitive (Vector, (!))
import Name8
import Offset
import LumpDirectory

newtype Loader a =
    Loader { rawLoader :: forall r . LumpDirectory -> Handle -> (String -> IO r) -> (a -> IO r) -> IO r }

instance Monad Loader where
    Loader action >>= f = Loader (\dir h bail k -> action dir h bail (\x -> rawLoader (f x) dir h bail k))

instance Applicative Loader where
    pure x = Loader (\_ _ _ k -> k x)
    Loader actf <*> Loader actx = Loader (\dir h bail k -> actf dir h bail (\f -> actx dir h bail (\x -> k (f x))))

instance Functor Loader where
    fmap f (Loader action) = Loader (\dir h bail k -> action dir h bail (k . f))

instance MonadFail Loader where
    fail msg = Loader (\_ _ bail _ -> bail msg)

runLoader :: Loader a -> LumpDirectory -> Handle -> IO (Either String a)
runLoader (Loader action) dir h = action dir h (pure . Left) (pure . Right)

loadLump :: Int -> Loader ByteString
loadLump i = Loader $ \lumpdir h bail k -> do
    (off, size, _) <- lookupLump lumpdir i
    hSeekOff h off
    bs <- BS.hGet h size
    if (BS.length bs < size)
        then bail $ "loadLump: (" ++ show i ++ ") ran out of data early"
        else k bs

lookupLumpNumber :: Name8 -> Loader (Maybe Int)
lookupLumpNumber name = Loader $ \dir _ bail k -> do
    let names = lumpdir_names dir
    k (VP.findIndexR (name ==) names)

loadLumpByName :: Name8 -> Loader ByteString
loadLumpByName name = do
    mi <- lookupLumpNumber name
    case mi of
        Just i -> loadLump i
        Nothing -> fail ("loadLumpByName: \"" ++ toString name ++ "\" not found")

    

yeahright :: MonadFail m => Either String a -> m a
yeahright = either fail pure

failUnless :: MonadFail m => Bool -> String -> m ()
failUnless True _ = pure ()
failUnless _ msg = fail msg

lookupLump :: MonadFail m => LumpDirectory -> Int -> m (Offset,Int,Name8)
lookupLump (LumpDirectory limit offsets sizes names) i = do
    if i < 0 || i >= limit
        then fail $ "lookupLump: index out of range " ++ show i ++ " out of " ++ show limit
        else do
            let !off = offsets ! i
            let !size = fromIntegral (sizes ! i)
            let !name = names ! i
            pure (off, size, name)

getLumpName :: Int -> Loader (Maybe Name8)
getLumpName i = Loader $ \dir _ _ k -> k (lumpdirGetName dir i)

findFirstLumpFrom :: Int -> Name8 -> Loader (Maybe Int)
findFirstLumpFrom start wanted = go start where
    go i = do
        mname <- getLumpName i
        case mname of
            Nothing -> pure Nothing -- ran out of directory
            Just name -> if name == wanted
                then pure (Just i)
                else go (i + 1)
