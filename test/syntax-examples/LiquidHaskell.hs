module LiquidHaskell where 

{-@ incr :: x:Nat -> {v:Nat | v > x} @-}
incr :: Int -> Int 
inct x = x + 1 

