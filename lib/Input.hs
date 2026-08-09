{-# LANGUAGE DuplicateRecordFields #-}
module Input where

import Data.Word
import Data.List (insert, delete, nub)

data JoyState = JoyState { axis1 :: !Int, axis2 :: !Int, buttons :: !Word }
    deriving (Show, Eq)

data MouseState = MouseState { mousex :: !Int, mousey :: !Int, buttons :: !Word }
    deriving (Show, Eq)

-- "raw" user input from backend
data InputEvent =
    EvKeyUp !Int |
    EvKeyDown !Int |
    EvMouse !MouseState |
    EvJoystick !JoyState |
    EvCharacter !Char
        deriving Show

data AbstractInput =
    Activate |
    GoHome |
    GoBack |
    GoLeftRight Int |
    GoUpDown Int |
    Pause |
    EnterChar Char |
    FunKey Int |
    ZoomIn |
    ZoomOut |
    Other InputEvent

-- cached user control, used to generate ticcmd
data ControlState = ControlState
    { ctrl_keysdown :: [Int]
    , ctrl_mousestate :: !MouseState
    , ctrl_joystate :: !JoyState
    , ctrl_chatchars :: [Char] } -- a queue
        deriving Show

zeroControlState :: ControlState
zeroControlState = ControlState [] (MouseState 0 0 0) (JoyState 0 0 0) []

absorbEvent :: ControlState -> InputEvent -> ControlState
absorbEvent cs@ControlState{ctrl_keysdown = ks} (EvKeyUp key) = cs{ctrl_keysdown = delete key ks}
absorbEvent cs@ControlState{ctrl_keysdown = ks} (EvKeyDown key) = cs{ctrl_keysdown = nub (insert key ks)}
absorbEvent cs (EvMouse s) = cs{ctrl_mousestate = s}
absorbEvent cs (EvJoystick s) = cs{ctrl_joystate = s}
absorbEvent cs@ControlState{ctrl_chatchars = q} (EvCharacter c) = cs{ctrl_chatchars = q ++ [c]}
