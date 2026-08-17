module Utils where

import Control.Monad.Writer

telln :: String -> Writer String ()
telln msg = do
    tell msg
    tell "\n"
