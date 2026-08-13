{-# LANGUAGE OverloadedRecordDot #-}
module Video where

import Raylib
import DoomKeys
import Gamepad
import RGBA
import Palette
import FPS
import Clock
import Buffer8
import FrameBuffer

import Control.Monad
import Data.Primitive
import Data.Vector.Primitive ((!))
import Foreign.Storable
import GHC.Stack
import Data.Word
import Data.Bits
import Data.Maybe

import Data.IORef
import qualified Data.Vector.Mutable as V
import Data.Foldable (fold)

import ColorBuffer

import Input

data VideoMisc = VideoMisc
    { video_screen0 :: FrameBuffer
    , video_tex :: Texture
    , video_img :: Image
    , video_fbwidth :: Int
    , video_fbheight :: Int
    , video_winwidth :: Int
    , video_winheight :: Int
    , video_gfxscale :: Int
    , video_fbrect :: Rect
    , video_winrect :: Rect
    , video_timebase :: Timebase
    , video_fps :: IORef FPS
    , video_palette :: IORef Palette
    , video_keymem :: IORef [Bool]
    , video_joymem :: IORef JoyState 
    , video_mousemem :: IORef MouseState }

data VideoCtrl = VideoCtrl
    { get_events :: IO [InputEvent]
    , get_fps :: IO Int
    , get_buffer :: IO FrameBuffer -- mutable byte array
    , set_palette :: Palette -> IO ()
    , finish_update :: IO ()
    , shutdown :: IO () }

wrapVideo :: VideoMisc -> VideoCtrl
wrapVideo video@VideoMisc{video_screen0=buf,video_palette=palref, video_fps=fpsref} = VideoCtrl
    { get_events = iVideoGetEvents $! video
    , get_fps = (floor . fpsCompute) <$> readIORef fpsref
    , get_buffer = pure buf
    , set_palette = \pal -> writeIORef palref pal
    , finish_update = iVideoFinishUpdate video
    , shutdown = iVideoShutdown video }

type Key = Int

monitoredKeys =
    [KEY_A .. KEY_Z] ++
    [KEY_ZERO .. KEY_NINE] ++
    [KEY_F1 .. KEY_F11] ++ [KEY_F12] ++
    [KEY_APOSTROPHE, KEY_COMMA, KEY_PERIOD, KEY_SLASH, KEY_BACKSLASH] ++
    [KEY_LEFT_BRACKET, KEY_RIGHT_BRACKET, KEY_SEMICOLON, KEY_GRAVE] ++
    [KEY_LEFT, KEY_RIGHT, KEY_UP, KEY_DOWN] ++
    [KEY_ESCAPE, KEY_ENTER, KEY_TAB, KEY_PAUSE, KEY_BACKSPACE] ++
    [KEY_SPACE, KEY_EQUAL, KEY_MINUS] ++
    [KEY_LEFT_SHIFT, KEY_LEFT_CONTROL, KEY_LEFT_ALT] ++
    [KEY_RIGHT_SHIFT, KEY_RIGHT_CONTROL, KEY_RIGHT_ALT]


-- character input
detectCharEvents :: IO [InputEvent]
detectCharEvents = go [] where
    go accum = do
        c <- getCharPressed
        if c == '\0'
            then pure (reverse accum)
            else go (EvCharacter c : accum)

-- key change detection
keyChange k False True = Just (EvKeyDown k)
keyChange k True False = Just (EvKeyUp k)
keyChange _ _ _ = Nothing

detectKeyEvents :: IORef [Bool] -> [Key] -> IO [InputEvent]
detectKeyEvents memory keys = do
    now <- mapM isKeyDown keys
    prev <- readIORef memory 
    writeIORef memory now
    pure (catMaybes (zipWith3 keyChange keys prev now))

makeKeyFilters :: [Key] -> IO [(Key, IORef Bool)]
makeKeyFilters keys = mapM f keys where
    f k = newIORef False >>= \ref -> pure (k, ref)

-- mouse change detection
detectMouseEvent :: IORef MouseState -> IO [InputEvent]
detectMouseEvent ref = do
    prev <- readIORef ref
    now <- pollMouse
    writeIORef ref now
    if prev /= now then pure [EvMouse now] else pure []

pollMouse :: IO MouseState
pollMouse = do
    let f _ False = 0; f v True = v
    b0 <- isMouseButtonDown 0
    b1 <- isMouseButtonDown 1
    b2 <- isMouseButtonDown 2
    (dx,dy) <- getMouseDelta
    pure (MouseState (truncate dx) (truncate dy) (f 1 b0 .|. f 2 b1 .|. f 4 b2))

-- gamepad change detection
detectGamepadEvents :: IORef JoyState -> IO [InputEvent]
detectGamepadEvents ref = do
    prev <- readIORef ref
    now <- pollGamepad 0 -- not great
    writeIORef ref now
    if prev /= now then pure [EvJoystick now] else pure []

pollGamepad :: Int -> IO JoyState
pollGamepad j = do
    there <- isGamepadAvailable j
    if not there
        then pure (JoyState 0 0 0)
        else do
            a0 <- getGamepadAxisMovement j 0
            a1 <- getGamepadAxisMovement j 1
            let f x = if x < -0.1 then -1 else if x > 0.1 then 1 else 0
            b0 <- isGamepadButtonDown j GAMEPAD_BUTTON_RIGHT_FACE_LEFT
            b1 <- isGamepadButtonDown j GAMEPAD_BUTTON_RIGHT_FACE_DOWN
            b2 <- isGamepadButtonDown j GAMEPAD_BUTTON_RIGHT_FACE_UP
            b3 <- isGamepadButtonDown j GAMEPAD_BUTTON_RIGHT_FACE_RIGHT
            b4 <- isGamepadButtonDown j GAMEPAD_BUTTON_LEFT_TRIGGER_1
            b5 <- isGamepadButtonDown j GAMEPAD_BUTTON_RIGHT_TRIGGER_1
            let g v True = v; g _ False = 0
            let packed = g 1 b0 .|. g 2 b1 .|. g 4 b2 .|. g 8 b3 .|. g 16 b4 .|. g 32 b5
            pure (JoyState (f a0) (f a1) packed)

iVideoGetEvents :: VideoMisc -> IO [InputEvent]
iVideoGetEvents kit = do
    pollInputEvents
    evs1 <- detectKeyEvents kit.video_keymem monitoredKeys
    evs2 <- detectGamepadEvents kit.video_joymem
    evs3 <- detectMouseEvent kit.video_mousemem
    evs4 <- detectCharEvents
    pure (evs1 ++ evs2 ++ evs3 ++ evs4)

{-
SetGamepadMappings("03000000790000004e95000011010000,DragonRise Inc. NGC USB Gamepad,a:b1,b:b0,dpdown:b14,dpleft:b15,dpright:b13,dpup:b12,leftshoulder:b4,lefttrigger:a3,leftx:a0,lefty:a1,rightshoulder:b5,righttrigger:a4,rightx:a5,righty:a2,start:b9,x:b2,y:b3,platform:Linux,");
    SetGamepadMappings("03000000790000001100000010010000,!NNEXT Gamepad,a:b2,b:b1,x:b3,y:b0,leftshoulder:b4,rightshoulder:b5,back:b8,start:b9,leftx:a0,lefty:a1,dpup:-a1,dpdown:+a1,dpleft:-a0,dpright:+a0");
-}
            
    -- isGamepadButtonDown j 
    -- GAMEPAD_BUTTON_RIGHT_FACE_LEFT
    -- GAMEPAD_BUTTON_RIGHT_FACE_DOWN
    -- GAMEPAD_BUTTON_RIGHT_FACE_UP
    -- GAMEPAD_BUTTON_RIGHT_FACE_RIGHT
    -- GAMEPAD_BUTTON_LEFT_TRIGGER_1
    -- GAMEPAD_BUTTON_RIGHT_TRIGGER_1

{-
fillRandom :: Buffer8 -> Image -> IO ()
fillRandom (Buffer8 dst) img = do
    w <- getImageWidth img
    h <- getImageHeight img
    let n = w * h
    forM_ [0 .. n-1] $ \i -> do
        g <- rand
        let x = fromIntegral (g .&. 255) :: Word8
        writeByteArray dst i x
-}

iVideoFinishUpdate :: VideoMisc -> IO ()
iVideoFinishUpdate VideoMisc{video_screen0=fb,video_tex=tex,video_img=img,video_fbrect=fbrect,video_winrect=winrect,video_palette=palref,video_fps=fpsref,video_timebase=base} = do
    -- update fps calculator
    getMonotime base >>= modifyIORef fpsref . fpsWrite

    -- color expand and upload framebuffer
    pal <- readIORef palref
    --fillRandom (fb_pixels fb) img
    copyTrueColor img (fb_pixels fb) pal
    updateTexture tex img
    beginDrawing
    clearBackground black
    drawTexturePro tex fbrect winrect (Vec2 0 0) 0.0 white
    endDrawing
    swapScreenBuffer


iVideoShutdown :: VideoMisc -> IO ()
iVideoShutdown video = do
    unloadTexture (video_tex video)
    unloadImage (video_img video)
    closeWindow

setupVideo :: Int -> Int -> Int -> String -> Palette -> Timebase -> IO VideoCtrl
setupVideo w h scale title pal base = do
    let winw = scale * w
    let winh = scale * h * 5 `div` 4
    initWindow winw winh title
    img <- genImageColor w h black
    tex <- loadTextureFromImage img
    buf <- newBuffer8 (w*h)
    let fb = FrameBuffer w h (w * h) buf

    mem1 <- newIORef (map (\_ -> False) monitoredKeys)
    mem2 <- newIORef (JoyState 0 0 0)
    mem3 <- newIORef (MouseState 0 0 0)
    mem4 <- newIORef pal
    mem5 <- newIORef (FPS 8 [])

    setExitKey 0

    setGamepadMappings "03000000790000001100000010010000,!NNEXT Gamepad,a:b2,b:b1,x:b3,y:b0,leftshoulder:b4,rightshoulder:b5,back:b8,start:b9,leftx:a0,lefty:a1,dpup:-a1,dpdown:+a1,dpleft:-a0,dpright:+a0"

    let video = VideoMisc
            { video_tex = tex
            , video_img = img
            , video_screen0 = fb
            , video_fbwidth = w
            , video_fbheight = h
            , video_winwidth = winw
            , video_winheight = winh
            , video_gfxscale = scale
            , video_fbrect = Rect 0 0 (fromIntegral w) (fromIntegral h)
            , video_winrect = Rect 0 0 (fromIntegral winw) (fromIntegral winh)
            , video_timebase = base
            , video_fps = mem5
            , video_palette = mem4
            , video_keymem = mem1
            , video_joymem = mem2
            , video_mousemem = mem3
            }

    pure (wrapVideo video)


{- ramshackle RNG in case we need one -}

xorshift32 :: Word32 -> Word32
xorshift32 x =
    let x1 = x `xor` (x `shiftL` 13)
        x2 = x1 `xor` (x1 `shiftR` 17)
    in  x2 `xor` (x2 `shiftL` 5)

{-
rstate :: IORef Word32
rstate = unsafePerformIO (newIORef 123456789)

rand :: IO Word32
rand = do
    g <- readIORef rstate
    writeIORef rstate (xorshift32 g)
    pure g
-}
