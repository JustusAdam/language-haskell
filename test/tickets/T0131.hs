-- SYNTAX TEST "source.haskell" "LiquidHaskell annotations"

{-@ incr :: x:Nat -> {v:Nat | v > x} @-}
-- <--------------------------------------- block.liquidhaskell.haskell
incr :: Int -> Int 
incr x = x + 1 
