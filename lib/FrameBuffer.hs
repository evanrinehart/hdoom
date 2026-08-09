module FrameBuffer where

import Buffer8

data FrameBuffer = FrameBuffer
    { fb_width :: Int
    , fb_height :: Int
    , fb_size :: Int
    , fb_pixels :: Buffer8 }

isOutOfBounds :: Int -> Int -> Int -> Int -> FrameBuffer -> Bool
isOutOfBounds x y w h (FrameBuffer fbw fbh _ _) =
    x < 0 ||
    y < 0 ||
    x + w > fbw ||
    y + h > fbh
