module AreaTree where

import Nodes
import PackedNodes
import Fix16
import Geometry
import Four

import Data.Primitive.ByteArray -- ?

import Data.Set (Set)
import qualified Data.Set as Set

type Divline = Line Fix16
type BBox = Four Fix16
data AreaTree =
    SplitArea Int BBox Divline AreaTree AreaTree |
    LeafArea Int BBox
        deriving (Show)

nodesToAreaTree :: [Node] -> Either String AreaTree
nodesToAreaTree nodes =
    let n = length nodes
        PackedNodes _ arr = packNodes (length nodes) nodes
        tree1 = areaTree arr (n - 1) maxArea
        tree2 = areaTree arr (n - 1) maxArea
        {-# NOINLINE tree2 #-}
    in if detectCycle tree1 Set.empty
        then Left "cyclic nodes"
        else Right tree2

areaTree :: ByteArray -> Int -> BBox -> AreaTree
areaTree arr num bbox = case analyzeNodeNumber num of
    SubsectorRef ssnum -> LeafArea ssnum bbox
    NodeRef here ->
        let c0 = fromIntegral $ unsafeGetChild0 arr here
            c1 = fromIntegral $ unsafeGetChild1 arr here
            a0 = unsafeGetBox0 arr here
            a1 = unsafeGetBox0 arr here
            line = unsafeGetDivline arr here
        in SplitArea here bbox line (areaTree arr c0 a0) (areaTree arr c1 a1)

detectCycle :: AreaTree -> Set Int -> Bool
detectCycle (LeafArea i _) _ = False
detectCycle (SplitArea i _ _ l r) seen =
    if i `Set.member` seen
        then True
        else
            let seen' = Set.insert i seen
            in detectCycle l seen' || detectCycle r seen'

maxArea :: BBox
maxArea = Four minBound maxBound maxBound minBound
