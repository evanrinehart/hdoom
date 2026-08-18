module Utils where

import Data.List
import Control.Monad.Writer

telln :: String -> Writer String ()
telln msg = do
    tell msg
    tell "\n"

strip :: String -> String
strip = dropWhile (`elem` " \t")

dropUntil :: String -> String -> String
dropUntil pattern content = go content where
    go [] = ""
    go body
        | pattern `isPrefixOf` body = body
        | otherwise = go (drop 1 body)
