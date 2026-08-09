module FPS where

data FPS = FPS Int [Double]
    deriving Show

fpsCompute :: FPS -> Double
fpsCompute (FPS n []) = 0.0
fpsCompute (FPS n [x]) = 0.0
fpsCompute (FPS n xs) =
    let lower = minimum xs in
    let upper = maximum xs in
    let delta = upper - lower in
    (1.0 / delta) * (fromIntegral n - 1)

fpsWrite :: Double -> FPS -> FPS
fpsWrite x (FPS n xs) = FPS n (take n (x:xs))
