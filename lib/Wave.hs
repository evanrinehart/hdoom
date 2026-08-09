module Wave where

import Data.ByteString (ByteString)

data Wave = Wave
    { wave_frameCount :: !Int
    , wave_sampleRate :: !Int
    , wave_sampleSize :: !Int
    , wave_channels   :: !Int
    , wave_data :: !ByteString   --length = frameCount * sampleSize * channels
    }
        deriving Show


