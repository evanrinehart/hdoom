{-# LANGUAGE OverloadedRecordDot #-}
{-# LANGUAGE OverloadedStrings #-}
module Main where

import Control.Monad (replicateM_, when)
import System.IO (hClose, IOMode(..), Handle)
import Control.Concurrent
import Control.Exception (throwIO, finally, bracket)

import FileSystem (identifyIWAD, openFile, OsPath)
import Clock
import Video
import Audio
import RNG
import KnownIWADs

import Raylib
import WadFile
import Loader
import LumpDirectory


data AppKit = AppKit
  { app_video :: VideoCtrl
  , app_audio :: AudioCtrl
  , app_timebase :: Timebase
  , app_ticker :: Ticker
  , app_rng_P :: RNG -- gamePlay rng
  , app_rng_M :: RNG -- other stuff (Menu?) rng
  , app_config :: ()
  , app_iwad :: KnownIWAD
  , app_iwad_path :: OsPath
  , app_lump_directory :: LumpDirectory
  , app_iwad_handle :: Handle }

identifyIWAD_getInfo :: IO (KnownIWAD, OsPath, LumpDirectory)
identifyIWAD_getInfo = do
    (iwad, path) <- identifyIWAD `orThrow` "iwad?"
    h <- openFile path ReadMode
    ld <- readLumpDirectory h `orThrowWith` id
    hClose h
    pure (iwad, path, ld)

main :: IO ()
main = do

    -- identify IWAD file and load metadata
    (iwad, wadpath, ld) <- identifyIWAD_getInfo
    h <- openFile wadpath ReadMode

    -- set up video and audio system
    palettes@(pal:_) <- runLoader loadPalettes ld h `orThrowWith` id
    timebase <- newTimebase
    video <- setupVideo 320 200 2 (iwad_title iwad) pal timebase
    audio <- initAudio ld h

    --patch1 <- runLoader (loadPatch "TITLEPIC") ld h `orThrowWith` id
    --patch2 <- runLoader (loadPatch "HEADA1") ld h `orThrowWith` id
    --fb <- video.get_buffer
    --drawPatch fb 0 0 patch1
    --drawPatch fb 160 100 patch2

    level <- runLoader (loadLevel "E1M1") ld h `orThrowWith` id
    print level

    -- M initialize menu system
    -- R *load graphics*, initialize rendering lookup tables
    -- P initialize sprites, access sprite lumps
    -- D_CheckNetGame !
    -- HU load the HUD font graphics
    -- ST note palette, load graphics for status bar
    -- S set up sfx manager

    ticker <- newTicker timebase
    rng1 <- newRNG
    rng2 <- newRNG

    let app = AppKit video audio timebase ticker rng1 rng2 () iwad wadpath ld h

    netgameCore app
        `finally`
            cleanup app

cleanup :: AppKit -> IO ()
cleanup app = do
    hClose app.app_iwad_handle
    app.app_audio.shutdown
    app.app_video.shutdown

netgameCore :: AppKit -> IO ()
netgameCore app = loop where
    loop = do
        -- see if enough time passed, is often zero
        ticks <- app.app_ticker.check
        -- generate user input command to try to advance time
        replicateM_ ticks $ do
            nc_MakeTic app localcmds -- poll and cache user input, assemble cmd, maketic++
            nc_NVomit            -- broadcast cmd to all nodes
            nc_NSolidify         -- handle your own packet
        whileM nc_NSolidify      -- handle any incoming packets and retransmit requests
        nc_NVomit                -- broadcast ... whatever was generated in previous step

        -- can the game run
        lowtic <- getLowtic -- minimum of nettics (network maketics)
        gametic <- getGametic -- current gametic
        replicateM_ (lowtic - gametic) nc_GameTic -- gametic ++
        when (ticks > 0) $ do
            nc_DDisplay app
        iSleep 0.001
        done <- windowShouldClose
        if done
            then pure ()
            else loop

processEvents :: AppKit -> IO ()
processEvents app = do
    events <- app.app_video.get_events

    -- m_responder (menu interaction)
    -- g_responder (subresponders, cache control state)

    -- app consumes raw input events
    -- to update internal states
    -- and trigger side effects (sounds, quit)

    --when (not (null events)) (print events >> app.app_audio.play_sound "DSITEMUP")
    pure ()

buildTiccmd :: AppKit -> IO ()
buildTiccmd app = do
    -- sample control state to form 1 cmd for player
    pure ()

localcmds = []
nc_NSolidify = pure False
nc_NVomit = pure ()
nc_GameTic = pure () -- consumes ticmds
nc_MakeTic app _ = do -- should produce ticcmds
    processEvents app -- update internal state and execute side effects (sound)
    buildTiccmd app   -- sample control cache to generate 1 cmd for player
    -- app.engine.maketic += 1
    pure ()

nc_DDisplay :: AppKit -> IO ()
nc_DDisplay app = app.app_video.finish_update

getLowtic = pure 0
getGametic = pure 0


iSleep :: Double -> IO ()
iSleep seconds = do
    let micros = seconds * 1000000
    threadDelay (floor micros)

-- repeatedly execute the 2nd action unless the 1st action returns True
untilM :: IO Bool -> IO a -> IO ()
untilM check action = loop where
    loop = check >>= \done -> if done then return () else action >> loop

-- repeatedly execute the action until it returns False
whileM :: IO Bool -> IO ()
whileM action = loop where
    loop = action >>= \carryon -> if carryon then loop else pure ()

orThrowWith :: IO (Either e a) -> (e -> String) -> IO a
orThrowWith action f = do
    result <- action
    case result of
        Left e -> throwIO (userError (f e))
        Right x -> pure x

orThrow :: IO (Maybe a) -> String -> IO a
orThrow action msg = do
    result <- action
    case result of
        Nothing -> throwIO (userError msg)
        Just x -> pure x



-- other responders

mResponder :: IO ()
mResponder = do
    -- if a menu-like question is up:
    -- yes no question
    -- messages which don't need an answer

    -- minus, equals change screen size
    -- F1 through F11
    -- escape activates menu
    -- savegame textbox interaction

    -- if menu is active:
    -- menu navigation up down
    -- menu leftright interaction
    -- menu activate item
    -- menu dismiss
    -- menu navigation go back
    -- menu navigation shortcuts (letters)
    pure ()

gResponder :: IO ()
gResponder = do
    -- F12 cycle player camera
    -- summon menu during a demo

    -- during a level:
    -- HU responder
    -- ST responder
    -- AM responder

    -- during a finale:
    -- F responder

    -- handle pause key
    -- absorb keydown event into control state
    -- absorb keyup event into control state
    -- absorb mouse  event into control state
    -- absorb joystick event into control state
    pure ()

huResponder :: IO ()
huResponder = do
    -- remember if alt key is held down but don't eat event
    -- enter key shows last message
    -- T activates chat broadcast mode
    -- I G B R activates private message mode
    -- alt + number sends chat macro
    -- backspace sends 127
    -- enter sends 13 and closes chat mode
    -- escape ends chat mode
    -- entering a character in chat mode enqueues char
    pure ()

stResponder :: IO ()
stResponder = do
    -- always returns false, never eats event
    -- the only purpose is to activate cheats
    pure ()

