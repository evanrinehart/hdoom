{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE EmptyDataDecls #-}
module Raylib where

import Data.Word
import Data.Char
--import Data.Bits
import Foreign.C
import Foreign.Ptr
import Foreign.Marshal
import Foreign.Storable
import Data.Coerce
import Control.Exception
import Data.ByteString.Internal

import RGBA
import Wave


data RaylibError = RaylibError deriving Show

instance Exception RaylibError


foreign import ccall unsafe "InitWindow" c_InitWindow :: CInt -> CInt -> CString -> IO ()
foreign import ccall unsafe "WindowShouldClose" c_WindowShouldClose :: IO CBool
foreign import ccall unsafe "CloseWindow" c_CloseWindow :: IO ()
foreign import ccall unsafe "BeginDrawing" c_BeginDrawing :: IO ()
foreign import ccall unsafe "EndDrawing" c_EndDrawing :: IO ()
foreign import ccall unsafe "SwapScreenBuffer" c_SwapScreenBuffer :: IO ()
foreign import ccall unsafe "PollInputEvents" c_PollInputEvents :: IO ()

foreign import ccall unsafe "InitAudioDevice" c_InitAudioDevice :: IO ()
foreign import ccall unsafe "CloseAudioDevice" c_CloseAudioDevice :: IO ()
foreign import ccall unsafe "hs_play_sound" c_hsPlaySound :: Ptr RaylibSound -> IO ()
foreign import ccall unsafe "hs_load_sound_from_wave" c_hsLoadSoundFromWave :: CUInt -> CUInt -> CUInt -> CUInt -> Ptr () -> CSize -> IO (Ptr RaylibSound)
foreign import ccall unsafe "hs_unload_sound" c_hsUnloadSound :: Ptr RaylibSound -> IO ()

foreign import ccall unsafe "EnableCursor" c_EnableCursor :: IO ()
foreign import ccall unsafe "DisableCursor" c_DisableCursor :: IO ()

foreign import ccall unsafe "IsGamepadAvailable" c_IsGamepadAvailable :: CInt -> IO CBool
foreign import ccall unsafe "IsGamepadButtonDown" c_IsGamepadButtonDown :: CInt -> CInt -> IO CBool
foreign import ccall unsafe "GetGamepadAxisMovement" c_GetGamepadAxisMovement :: CInt -> CInt -> IO CFloat
foreign import ccall unsafe "SetGamepadMappings" c_SetGamepadMappings :: CString -> IO CInt
foreign import ccall unsafe "SetExitKey" c_SetExitKey :: CInt -> IO ()

foreign import ccall unsafe "GetCharPressed" c_GetCharPressed :: IO CInt
foreign import ccall unsafe "IsKeyDown" c_IsKeyDown :: CInt -> IO CBool
foreign import ccall unsafe "IsKeyPressed" c_IsKeyPressed :: CInt -> IO CBool
foreign import ccall unsafe "IsMouseButtonDown" c_IsMouseButtonDown :: CInt -> IO CBool

foreign import ccall unsafe "hs_get_mouse_delta" c_hsGetMouseDelta :: Ptr CFloat -> Ptr CFloat -> IO ()


foreign import ccall unsafe "hs_draw_text" c_hsDrawText :: CString -> CInt -> CInt -> CInt -> Word32 -> IO ()

foreign import ccall unsafe "hs_load_texture" c_hsLoadTexture :: CString -> IO (Ptr RaylibTexture)
foreign import ccall unsafe "hs_load_image" c_hsLoadImage :: CString -> IO (Ptr RaylibImage)
foreign import ccall unsafe "hs_unload_texture" c_hsUnloadTexture :: Ptr RaylibTexture -> IO ()
foreign import ccall unsafe "hs_unload_image" c_hsUnloadImage :: Ptr RaylibImage -> IO ()

foreign import ccall unsafe "hs_clear_background" c_hsClearBackground :: Word32 -> IO ()
foreign import ccall unsafe "hs_gen_image_color" c_hsGenImageColor :: CInt -> CInt -> Word32 -> IO (Ptr RaylibImage)
foreign import ccall unsafe "hs_load_texture_from_image" c_hsLoadTextureFromImage :: Ptr RaylibImage -> IO (Ptr RaylibTexture)
foreign import ccall unsafe "hs_update_texture" c_hsUpdateTexture :: Ptr RaylibTexture -> Ptr RaylibImage -> IO ()
foreign import ccall unsafe "hs_image_data" c_hsImageData :: Ptr RaylibImage -> IO (Ptr Word32)
foreign import ccall unsafe "hs_image_width" c_hsImageWidth :: Ptr RaylibImage -> IO CInt
foreign import ccall unsafe "hs_image_height" c_hsImageHeight :: Ptr RaylibImage -> IO CInt

foreign import ccall unsafe "hs_draw_rectangle" c_hsDrawRectangle :: CInt -> CInt -> CInt -> CInt -> Word32 -> IO ()
foreign import ccall unsafe "hs_draw_texture" c_hsDrawTexture :: Ptr RaylibTexture -> CInt -> CInt -> Word32 -> IO ()

foreign import ccall unsafe "hs_draw_texture_pro"
    c_hsDrawTexturePro ::
        Ptr RaylibTexture ->
        CFloat -> CFloat -> CFloat -> CFloat ->
        CFloat -> CFloat -> CFloat -> CFloat ->
        CFloat -> CFloat -> CFloat -> Word32 -> IO ()


isKeyDown :: Int -> IO Bool
isKeyDown = fmap (/= 0) . c_IsKeyDown . fromIntegral

isKeyPressed :: Int -> IO Bool
isKeyPressed = fmap (/= 0) . c_IsKeyPressed . fromIntegral

isMouseButtonDown :: Int -> IO Bool
isMouseButtonDown = fmap (/= 0) . c_IsMouseButtonDown . fromIntegral

getMouseDelta :: IO (Float, Float)
getMouseDelta = do
    alloca $ \xp -> do
        alloca $ \yp -> do
            c_hsGetMouseDelta xp yp
            dx <- realToFrac <$> peek xp
            dy <- realToFrac <$> peek yp
            pure (dx,dy)

getCharPressed :: IO Char
getCharPressed = do
    i <- c_GetCharPressed
    pure (chr (fromIntegral i))

isGamepadAvailable :: Int -> IO Bool
isGamepadAvailable i = (/= 0) <$> c_IsGamepadAvailable (fromIntegral i)

isGamepadButtonDown :: Int -> CInt -> IO Bool
isGamepadButtonDown i button = (/= 0) <$> c_IsGamepadButtonDown (fromIntegral i) button

getGamepadAxisMovement :: Int -> Int -> IO Float
getGamepadAxisMovement i axis = realToFrac <$> c_GetGamepadAxisMovement (fromIntegral i) (fromIntegral axis)

setGamepadMappings :: String -> IO Int
setGamepadMappings str =
    withCString str (\cstr -> fromIntegral <$> c_SetGamepadMappings cstr)

setExitKey :: Int -> IO ()
setExitKey = c_SetExitKey . fromIntegral

initWindow :: Int -> Int -> String -> IO ()
initWindow w h title =
    withCString title (c_InitWindow (fromIntegral w) (fromIntegral h))

drawText :: String -> Int -> Int -> Int -> RGBA -> IO ()
drawText text x y size (RGBA clr) =
    withCString text (\p -> c_hsDrawText p (fromIntegral x) (fromIntegral y) (fromIntegral size) clr)

windowShouldClose :: IO Bool
windowShouldClose = fmap (/= 0) c_WindowShouldClose

closeWindow :: IO ()
closeWindow = c_CloseWindow

beginDrawing :: IO ()
beginDrawing = c_BeginDrawing

endDrawing :: IO ()
endDrawing = c_EndDrawing

swapScreenBuffer :: IO ()
swapScreenBuffer = c_SwapScreenBuffer

pollInputEvents :: IO ()
pollInputEvents = c_PollInputEvents

clearBackground :: RGBA -> IO ()
clearBackground (RGBA clr) =
    c_hsClearBackground clr

drawRectangle :: Int -> Int -> Int -> Int -> RGBA -> IO ()
drawRectangle x y w h (RGBA clr) =
    c_hsDrawRectangle
        (fromIntegral x)
        (fromIntegral y)
        (fromIntegral w)
        (fromIntegral h)
        clr

drawTexture :: Texture -> Int -> Int -> RGBA -> IO ()
drawTexture (Texture tex) x y (RGBA clr) =
    c_hsDrawTexture tex (fromIntegral x) (fromIntegral y) clr

enableCursor :: IO ()
enableCursor = c_EnableCursor

disableCursor :: IO ()
disableCursor = c_DisableCursor

data RaylibSound
newtype Sound = Sound (Ptr RaylibSound)

initAudioDevice :: IO ()
initAudioDevice = c_InitAudioDevice

closeAudioDevice :: IO ()
closeAudioDevice = c_CloseAudioDevice

loadSoundFromWave :: Wave -> IO Sound
loadSoundFromWave wave =
    let PS fp 0 len = wave_data wave in
    unsafeWithForeignPtr fp $ \p -> do
        let arg1 = fromIntegral (wave_frameCount wave)
        let arg2 = fromIntegral (wave_sampleRate wave)
        let arg3 = fromIntegral (wave_sampleSize wave)
        let arg4 = fromIntegral (wave_channels wave)
        q <- c_hsLoadSoundFromWave arg1 arg2 arg3 arg4 (castPtr p) (fromIntegral len)
        if q == nullPtr
            then throwIO RaylibError
            else pure (Sound q)

unloadSound :: Sound -> IO ()
unloadSound (Sound ptr) = c_hsUnloadSound ptr

playSound :: Sound -> IO ()
playSound (Sound ptr) = c_hsPlaySound ptr


data RaylibImage
data RaylibTexture

newtype Image = Image (Ptr RaylibImage)
newtype Texture = Texture (Ptr RaylibTexture)

unloadImage :: Image -> IO ()
unloadImage = c_hsUnloadImage . coerce

unloadTexture :: Texture -> IO ()
unloadTexture = c_hsUnloadTexture . coerce

genImageColor :: Int -> Int -> RGBA -> IO Image
genImageColor w h (RGBA clr) =
    Image <$> c_hsGenImageColor (fromIntegral w) (fromIntegral h) clr

getImageWidth :: Image -> IO Int
getImageWidth (Image img) = fromIntegral <$> c_hsImageWidth img

getImageHeight :: Image -> IO Int
getImageHeight (Image img) = fromIntegral <$> c_hsImageHeight img

getImageData :: Image -> IO (Ptr Word32)
getImageData (Image img) = c_hsImageData img

loadTextureFromImage :: Image -> IO Texture
loadTextureFromImage (Image img) = Texture <$> c_hsLoadTextureFromImage img

loadTexture :: FilePath -> IO Texture
loadTexture path = withCString path $ \p -> Texture <$> c_hsLoadTexture p

loadImage :: FilePath -> IO Image
loadImage path = withCString path $ \p -> Image <$> c_hsLoadImage p

updateTexture :: Texture -> Image -> IO ()
updateTexture (Texture tex) (Image img) = c_hsUpdateTexture tex img

putPixel :: Image -> Int -> Int -> RGBA -> IO ()
putPixel (Image img) x y (RGBA clr) = do
    p <- c_hsImageData img
    w <- fromIntegral <$> c_hsImageWidth img
    h <- fromIntegral <$> c_hsImageHeight img
    let total = w * h
    let off = y * w + x
    if off < 0 || off >= total
        then do
            pure ()
        else do
            pokeElemOff p off clr

data RectOf a = Rect !a !a !a !a deriving (Functor, Show)
data Vec2Of a = Vec2 !a !a deriving (Functor, Show)
type Rect = RectOf Float
type Vec2 =  Vec2Of Float

drawTexturePro :: Texture -> Rect -> Rect -> Vec2 -> Float -> RGBA -> IO ()
drawTexturePro (Texture tex) src dst origin rotation (RGBA clr) = do
    let Rect sx sy sw sh = fmap realToFrac src
    let Rect dx dy dw dh = fmap realToFrac dst
    let Vec2 ox oy = fmap realToFrac origin
    let rot = realToFrac rotation
    c_hsDrawTexturePro tex sx sy sw sh dx dy dw dh ox oy rot clr
