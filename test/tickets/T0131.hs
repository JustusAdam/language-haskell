-- SYNTAX TEST "source.haskell" "LiquidHaskell annotations"

{-@ incr :: x:Nat -> {v:Nat | v > x} @-}
-- <--------------------------------------- block.liquidhaskell.haskell
--       ^^ keyword.other.double-colon.haskell
--                ^^ keyword.operator.haskell
--  -------------------------------- - comment.block.haskell
incr :: Int -> Int 
incr x = x + 1 
