{-# LANGUAGE DuplicateRecordFields #-}
module Mobj where

import Data.Vector.Primitive
import Data.Vector.Primitive.Mutable
import Data.Word
import Data.Int
import Name8

-- mobj "mobile objects or active map objects"
-- are entities in a running game which are located in 3D space
-- their behavior is determined by their "mobj number" and
-- a large table of "states"

-- in the DOOM engine mobjs were allocated as "thinkers" by
-- Z_Malloc and chained together with other thinkers in a 
-- doubly linked list. They didn't have an identifier or
-- persistent pointer of their own.

-- since we won't be dealing in explicit pointers or doubly
-- linked list we need another way to work with mobjs.



-- fixed table which defines how mobjs behave in time
-- indexed by state number
data StateTable = StateTable
    { sprite_num :: Vector Int
    , sprite_subnum :: Vector Int -- fullbright flag moved to its own column
    , ticks :: Vector Int
    , code_pointer :: Vector Name8 -- indexes into function table
    , next_state :: Vector Int -- indexes into this table
    , misc_1 :: Vector Int
    , misc_2 :: Vector Int
    , fullbright :: Vector Word8 -- 0 or 1
    }

-- fixed table describing various properties of mobjs
-- indexed by mobj number
data InfoTable = InfoTable
    { doomed_num :: Vector Int
    , spawn_state :: Vector Int
    , spawn_health :: Vector Int
    , see_state :: Vector Int
    , see_sound :: Vector Name8
    , reaction_time :: Vector Int
    , attack_sound :: Vector Name8
    , pain_state :: Vector Int
    , pain_chance :: Vector Int
    , pain_sound :: Vector Int
    , melee_state :: Vector Int
    , missile_state :: Vector Int
    , death_state :: Vector Int
    , xdeath_state :: Vector Int
    , death_sound :: Vector Name8
    , speed :: Vector Int
    , radius :: Vector Int
    , height :: Vector Int
    , mass :: Vector Int
    , damage :: Vector Int
    , active_sound :: Vector Name8
    , flags :: Vector Int
    , raise_state :: Vector Int }


-- contains mutable data for all active mobjs
data MobjBuffers = MobjBuffers
    { is_active :: IOVector Word8
    , pos_x :: IOVector Int32
    , pos_y :: IOVector Int32
    , pos_z :: IOVector Int32
    , angle :: IOVector Word32
    , sprite_num :: IOVector Name8
    , sprite_subnum :: IOVector Int
    , sprite_fullbright :: IOVector Word8
    , floorz :: IOVector Int32
    , ceilingz :: IOVector Int32
    , radius :: IOVector Int32
    , height :: IOVector Int32
    , mom_x :: IOVector Int32
    , mom_y :: IOVector Int32
    , mom_z :: IOVector Int32
    , valid_count :: IOVector Int
    , mobj_type :: IOVector Int
    , ticks :: IOVector Int
    , flags :: IOVector Int
    , health :: IOVector Int
    , move_dir :: IOVector Int
    , move_count :: IOVector Int
    , target :: IOVector Int -- index into this table
    , reactiontime :: IOVector Int
    , threshold :: IOVector Int
    , player_info :: IOVector Int -- index into the player table
    , lastlook :: IOVector Int -- player number
    -- for nightmare respawn
    , spawn_x :: IOVector Int
    , spawn_y :: IOVector Int
    , tracer :: IOVector Int -- index into this table
}
