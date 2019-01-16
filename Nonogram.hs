module Monogram where
import Data.Matrix
{-
    Define new types to work with Nonograms
    - Color type to indicate whether a cell is black or white
    - Cell type which is option Color type. If cell is none, it hasn't been
    calculated yet
    - Col and Row type represent Cols and Rows from grids
    - Grid and TGrid type represent grid and transposed grid
    - Constraint types represent Constraints
-}
data Color 
 = B
 | W

type Cell = Just Color 

type Col = [Cell]
type Row = [Cell]

type Grid = [Row]
type TGrid = [Col]

type Constraint = Matrix
{-
    TODO: Depending on the big On runtime of the algorithm it may be possible to
    pre-process the Grid into both a Col list and a Row list without changing
    the On runtime
-}

{-
    Algorithm for getting Constraints from a given Grid or TGrid instance
-}
getConstraint :: Grid -> Just Constraint
getConstraint [] = zero
getConstraint 
