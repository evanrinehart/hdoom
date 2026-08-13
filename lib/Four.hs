{-# LANGUAGE DeriveFunctor #-}
module Four where

data Four a = Four !a !a !a !a deriving (Show, Functor)
