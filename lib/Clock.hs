module Clock where

import System.Clock
import Data.IORef

ticksPerSecond = 35

newtype Timebase = Timebase TimeSpec deriving (Show)

-- action to get time since timebase
getMonotime :: Timebase -> IO Double
getMonotime (Timebase ts0) = do
    ts <- getTime Monotonic
    let delta = ts `diffTimeSpec` ts0
    let whole = realToFrac (sec delta)
    let frac = realToFrac (nsec delta) / 1000000000.0
    let time = whole + frac
    return time

-- time scaled by ticks per second
getFracTicks :: Timebase -> IO Double
getFracTicks base = do
    t <- getMonotime base
    return (ticksPerSecond * t)

getTicks :: Timebase -> IO Int
getTicks = fmap floor . getFracTicks

newTimebase :: IO Timebase
newTimebase = Timebase <$> getTime Monotonic

data Ticker = Ticker
    { enable :: IO ()
    , disable :: IO ()
    , check :: IO Int }

type TickerGuts = (Timebase, IORef Bool, IORef Int)

wrapTicker :: TickerGuts -> Ticker
wrapTicker guts@(base,enref,timeref) = Ticker
    { enable = enableTicker guts
    , disable = writeIORef enref False
    , check = checkTicker guts }

-- device to generate "ticks", can be disabled
newTicker :: Timebase -> IO Ticker
newTicker base = do
    now <- getTicks base
    timeref <- newIORef now
    enref <- newIORef True
    return (wrapTicker (base, enref, timeref))

enableTicker :: TickerGuts -> IO ()
enableTicker (base, enref, timeref) = do
    enabled <- readIORef enref
    if enabled
        then return ()
        else do
            now <- getTicks base
            writeIORef timeref now
            writeIORef enref True

checkTicker :: TickerGuts -> IO Int
checkTicker (base, enref, timeref) = do
    enabled <- readIORef enref
    if enabled
        then checkTickerEn base timeref
        else return 0

checkTickerEn :: Timebase -> IORef Int -> IO Int
checkTickerEn base ref = do
    prev <- readIORef ref
    now <- getTicks base
    let delta = now - prev
    if delta >= 1
        then do
            writeIORef ref now
            return delta
        else do
            return 0
