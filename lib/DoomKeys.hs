{-# LANGUAGE PatternSynonyms #-}
module DoomKeys where

import Data.Char
import Data.Tuple (swap)

special_table :: [(Int, String)]
special_table =
    [(KEY_RIGHT, "right"),
    (KEY_LEFT, "left"),
    (KEY_UP, "up"),
    (KEY_DOWN, "down"),
    (KEY_ESCAPE, "escape"),
    (KEY_ENTER, "enter"),
    (KEY_TAB, "tab"),
    (KEY_SPACE, "space"),
    (KEY_F1, "F1"),
    (KEY_F2, "F2"),
    (KEY_F3, "F3"),
    (KEY_F4, "F4"),
    (KEY_F5, "F5"),
    (KEY_F6, "F6"),
    (KEY_F7, "F7"),
    (KEY_F8, "F8"),
    (KEY_F9, "F9"),
    (KEY_F10, "F10"),
    (KEY_F11, "F11"),
    (KEY_F12, "F12"),
    (KEY_BACKSPACE, "backspace"),
    (KEY_PAUSE, "pause"),
    (KEY_EQUAL, "="),
    (KEY_MINUS, "-"),
    (KEY_RIGHT_CONTROL, "ctrl"),
    (KEY_RIGHT_SHIFT, "shift"),
    (KEY_RIGHT_ALT, "alt")]

reverse_special_table = map swap special_table

toString :: Int -> String
toString i = case lookup i special_table of
    Just name -> name
    Nothing -> encodeKey i

encodeKey i
    | ord 'a' <= i && i <= ord 'z' = [toUpper (chr i)]
    | ord 'A' <= i && i <= ord 'Z' = [chr i]
    | ord '0' <= i && i <= ord '9' = [chr i]
    | i `elem` map ord ",./;'[]\\`=-" = [chr i]
    | otherwise = show i

parseSingleKey c
    | 'a' <= c && c <= 'z' = ord (toUpper c)
    | 'A' <= c && c <= 'Z' = ord c
    | '0' <= c && c <= '9' = ord c
    | c `elem` ",./;'[]\\`=-" = ord c
    | otherwise = 0

parseKey :: String -> Int
parseKey [c] = parseSingleKey c
parseKey str = case lookup str reverse_special_table of
    Just i -> i
    Nothing -> case reads str of
        (i, _) : _ -> if i < 0 then 0 else i
        _ -> 0

pattern KEY_APOSTROPHE :: Int
pattern KEY_APOSTROPHE = 39

pattern KEY_COMMA :: Int
pattern KEY_COMMA = 44

pattern KEY_MINUS :: Int
pattern KEY_MINUS = 45

pattern KEY_PERIOD :: Int
pattern KEY_PERIOD = 46

pattern KEY_SLASH :: Int
pattern KEY_SLASH = 47

pattern KEY_ZERO :: Int
pattern KEY_ZERO = 48

pattern KEY_ONE :: Int
pattern KEY_ONE = 49

pattern KEY_TWO :: Int
pattern KEY_TWO = 50

pattern KEY_THREE :: Int
pattern KEY_THREE = 51

pattern KEY_FOUR :: Int
pattern KEY_FOUR = 52

pattern KEY_FIVE :: Int
pattern KEY_FIVE = 53

pattern KEY_SIX :: Int
pattern KEY_SIX = 54

pattern KEY_SEVEN :: Int
pattern KEY_SEVEN = 55

pattern KEY_EIGHT :: Int
pattern KEY_EIGHT = 56

pattern KEY_NINE :: Int
pattern KEY_NINE = 57

pattern KEY_SEMICOLON :: Int
pattern KEY_SEMICOLON = 59

pattern KEY_EQUAL :: Int
pattern KEY_EQUAL = 61

pattern KEY_A :: Int
pattern KEY_A = 65

pattern KEY_B :: Int
pattern KEY_B = 66

pattern KEY_C :: Int
pattern KEY_C = 67

pattern KEY_D :: Int
pattern KEY_D = 68

pattern KEY_E :: Int
pattern KEY_E = 69

pattern KEY_F :: Int
pattern KEY_F = 70

pattern KEY_G :: Int
pattern KEY_G = 71

pattern KEY_H :: Int
pattern KEY_H = 72

pattern KEY_I :: Int
pattern KEY_I = 73

pattern KEY_J :: Int
pattern KEY_J = 74

pattern KEY_K :: Int
pattern KEY_K = 75

pattern KEY_L :: Int
pattern KEY_L = 76

pattern KEY_M :: Int
pattern KEY_M = 77

pattern KEY_N :: Int
pattern KEY_N = 78

pattern KEY_O :: Int
pattern KEY_O = 79

pattern KEY_P :: Int
pattern KEY_P = 80

pattern KEY_Q :: Int
pattern KEY_Q = 81

pattern KEY_R :: Int
pattern KEY_R = 82

pattern KEY_S :: Int
pattern KEY_S = 83

pattern KEY_T :: Int
pattern KEY_T = 84

pattern KEY_U :: Int
pattern KEY_U = 85

pattern KEY_V :: Int
pattern KEY_V = 86

pattern KEY_W :: Int
pattern KEY_W = 87

pattern KEY_X :: Int
pattern KEY_X = 88

pattern KEY_Y :: Int
pattern KEY_Y = 89

pattern KEY_Z :: Int
pattern KEY_Z = 90

pattern KEY_LEFT_BRACKET :: Int
pattern KEY_LEFT_BRACKET = 91

pattern KEY_BACKSLASH :: Int
pattern KEY_BACKSLASH = 92

pattern KEY_RIGHT_BRACKET :: Int
pattern KEY_RIGHT_BRACKET = 93

pattern KEY_GRAVE :: Int
pattern KEY_GRAVE = 96

pattern KEY_SPACE :: Int
pattern KEY_SPACE = 32

pattern KEY_ESCAPE :: Int
pattern KEY_ESCAPE = 256

pattern KEY_ENTER :: Int
pattern KEY_ENTER = 257

pattern KEY_TAB :: Int
pattern KEY_TAB = 258

pattern KEY_BACKSPACE :: Int
pattern KEY_BACKSPACE = 259

pattern KEY_INSERT :: Int
pattern KEY_INSERT = 260

pattern KEY_DELETE :: Int
pattern KEY_DELETE = 261

pattern KEY_RIGHT :: Int
pattern KEY_RIGHT = 262

pattern KEY_LEFT :: Int
pattern KEY_LEFT = 263

pattern KEY_DOWN :: Int
pattern KEY_DOWN = 264

pattern KEY_UP :: Int
pattern KEY_UP = 265

pattern KEY_PAGE_UP :: Int
pattern KEY_PAGE_UP = 266

pattern KEY_PAGE_DOWN :: Int
pattern KEY_PAGE_DOWN = 267

pattern KEY_HOME :: Int
pattern KEY_HOME = 268

pattern KEY_END :: Int
pattern KEY_END = 269

pattern KEY_CAPS_LOCK :: Int
pattern KEY_CAPS_LOCK = 280

pattern KEY_SCROLL_LOCK :: Int
pattern KEY_SCROLL_LOCK = 281

pattern KEY_NUM_LOCK :: Int
pattern KEY_NUM_LOCK = 282

pattern KEY_PRINT_SCREEN :: Int
pattern KEY_PRINT_SCREEN = 283

pattern KEY_PAUSE :: Int
pattern KEY_PAUSE = 284

pattern KEY_F1 :: Int
pattern KEY_F1 = 290

pattern KEY_F2 :: Int
pattern KEY_F2 = 291

pattern KEY_F3 :: Int
pattern KEY_F3 = 292

pattern KEY_F4 :: Int
pattern KEY_F4 = 293

pattern KEY_F5 :: Int
pattern KEY_F5 = 294

pattern KEY_F6 :: Int
pattern KEY_F6 = 295

pattern KEY_F7 :: Int
pattern KEY_F7 = 296

pattern KEY_F8 :: Int
pattern KEY_F8 = 297

pattern KEY_F9 :: Int
pattern KEY_F9 = 298

pattern KEY_F10 :: Int
pattern KEY_F10 = 299

pattern KEY_F11 :: Int
pattern KEY_F11 = 300

pattern KEY_F12 :: Int
pattern KEY_F12 = 301

pattern KEY_LEFT_SHIFT :: Int
pattern KEY_LEFT_SHIFT = 340

pattern KEY_LEFT_CONTROL :: Int
pattern KEY_LEFT_CONTROL = 341

pattern KEY_LEFT_ALT :: Int
pattern KEY_LEFT_ALT = 342

pattern KEY_LEFT_SUPER :: Int
pattern KEY_LEFT_SUPER = 343

pattern KEY_RIGHT_SHIFT :: Int
pattern KEY_RIGHT_SHIFT = 344

pattern KEY_RIGHT_CONTROL :: Int
pattern KEY_RIGHT_CONTROL = 345

pattern KEY_RIGHT_ALT :: Int
pattern KEY_RIGHT_ALT = 346

pattern KEY_RIGHT_SUPER :: Int
pattern KEY_RIGHT_SUPER = 347

pattern KEY_KB_MENU :: Int
pattern KEY_KB_MENU = 348

pattern KEY_KP_0 :: Int
pattern KEY_KP_0 = 320

pattern KEY_KP_1 :: Int
pattern KEY_KP_1 = 321

pattern KEY_KP_2 :: Int
pattern KEY_KP_2 = 322

pattern KEY_KP_3 :: Int
pattern KEY_KP_3 = 323

pattern KEY_KP_4 :: Int
pattern KEY_KP_4 = 324

pattern KEY_KP_5 :: Int
pattern KEY_KP_5 = 325

pattern KEY_KP_6 :: Int
pattern KEY_KP_6 = 326

pattern KEY_KP_7 :: Int
pattern KEY_KP_7 = 327

pattern KEY_KP_8 :: Int
pattern KEY_KP_8 = 328

pattern KEY_KP_9 :: Int
pattern KEY_KP_9 = 329

pattern KEY_KP_DECIMAL :: Int
pattern KEY_KP_DECIMAL = 330

pattern KEY_KP_DIVIDE :: Int
pattern KEY_KP_DIVIDE = 331

pattern KEY_KP_MULTIPLY :: Int
pattern KEY_KP_MULTIPLY = 332

pattern KEY_KP_SUBTRACT :: Int
pattern KEY_KP_SUBTRACT = 333

pattern KEY_KP_ADD :: Int
pattern KEY_KP_ADD = 334

pattern KEY_KP_ENTER :: Int
pattern KEY_KP_ENTER = 335

pattern KEY_KP_EQUAL :: Int
pattern KEY_KP_EQUAL = 336

pattern KEY_BACK :: Int
pattern KEY_BACK = 4

pattern KEY_MENU :: Int
pattern KEY_MENU = 5

pattern KEY_VOLUME_UP :: Int
pattern KEY_VOLUME_UP = 24

pattern KEY_VOLUME_DOWN :: Int
pattern KEY_VOLUME_DOWN = 25
