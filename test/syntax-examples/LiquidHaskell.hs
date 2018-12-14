module LiquidHaskell where 

{-@ incr :: x:Nat -> {v:Nat | v > x} @-}
incr :: Int -> Int 
incr x = x + 1 

