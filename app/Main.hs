{-# LANGUAGE OverloadedRecordDot #-}
{-# LANGUAGE OverloadedStrings #-}
module Main where

import Control.Monad (replicateM_, when)
import System.IO (hClose, IOMode(..), Handle)
import Control.Concurrent
import Control.Exception (throwIO, finally)

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

import Input
import Draw

data App = App
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
    pal:_ <- runLoader loadPalettes ld h `orThrowWith` id
    timebase <- newTimebase
    video <- setupVideo 320 200 2 (iwad_title iwad) pal timebase
    audio <- initAudio ld h

    patch1 <- runLoader (loadPatch "TITLEPIC") ld h `orThrowWith` id
    --patch2 <- runLoader (loadPatch "HEADA1") ld h `orThrowWith` id
    fb <- video.get_buffer
    drawPatch fb 0 0 patch1
    --drawPatch fb 160 100 patch2

    -- level <- runLoader (loadLevel "E1M1") ld h `orThrowWith` id

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

    let app = App video audio timebase ticker rng1 rng2 () iwad wadpath ld h

    netgameCore app
        `finally`
            cleanup app

cleanup :: App -> IO ()
cleanup app = do
    hClose app.app_iwad_handle
    app.app_audio.shutdown
    app.app_video.shutdown

netgameCore :: App -> IO ()
netgameCore app = loop where
    loop = do
        -- see if enough time passed, is often zero
        ticks <- app.app_ticker.get_ticks
        -- generate user input command to try to advance time
        replicateM_ ticks $ do
            nc_MakeTic app       -- poll and cache user input, assemble cmd, maketic++
            nc_NVomit            -- broadcast cmd to all nodes
            nc_NSolidify         -- handle your own packet
        whileM nc_NSolidify      -- handle any incoming packets and retransmit requests
        nc_NVomit                -- broadcast ... whatever was generated in previous step

        -- can the game run
        lowtic <- getLowtic -- minimum of nettics (network maketics)
        gametic <- getGametic -- current gametic
        replicateM_ (lowtic - gametic) nc_GameTic -- gametic ++
        when (ticks > 0) $ do
            --fps <- app.app_video.get_fps
            --print fps
            nc_DDisplay app
        iSleep 0.001
        done <- windowShouldClose
        if done
            then pure ()
            else loop

processEvents :: App -> IO ()
processEvents app = do
    events <- app.app_video.get_events

    case events of
        EvKeyDown _ : _ -> do
            print events
            app.app_audio.play_sound "DSITEMUP"
        _ -> pure ()

    -- m_responder (menu interaction)
    -- g_responder (subresponders, cache control state)

    -- app consumes raw input events
    -- to update internal states
    -- and trigger side effects (sounds, quit)

    pure ()

buildTiccmd :: App -> IO ()
buildTiccmd _ = do
    -- sample control state to form 1 cmd for player
    pure ()

-- receive and sort netcmds, including from self
nc_NSolidify :: IO Bool
nc_NSolidify = pure False

-- transmit localcmds and honor retransmit requests
nc_NVomit :: IO ()
nc_NVomit = pure ()

-- assuming we have enough cmds, advance the game and increment gametic
nc_GameTic :: IO ()
nc_GameTic = pure () -- consumes ticmds

nc_MakeTic :: App -> IO ()
nc_MakeTic app = do -- should produce ticcmds
    processEvents app -- update internal state and execute side effects (sound)
    buildTiccmd app   -- sample control cache to generate 1 cmd for player
    -- app.engine.maketic += 1
    pure ()

nc_DDisplay :: App -> IO ()
nc_DDisplay app = app.app_video.finish_update


getLowtic :: IO Int
getLowtic = pure 0
getGametic :: IO Int
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
