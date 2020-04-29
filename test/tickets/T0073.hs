-- SYNTAX TEST "source.haskell" "Visible type application"

function = 
    let l = [] @[Int] in
--             ^ meta.type-application.haskell
--               ^^^ storage.type.haskell 
    let x = "Hello" @String in
--                  ^ meta.type-application.haskell 
--                   ^^^^^^ storage.type.haskell
    let c@(Some pattern) = undefined in
--       ^ keyword.operator.haskell
--       ^ - meta.type-application.haskell
--         ^^^^ constant.other.haskell
    let g = f @(g -> String) in
--            ^ meta.type-application.haskell
--              ^ variable.other.generic-type.haskell
    let h = k @_ @_ @Int
--            ^  ^ meta.type-application.haskell
    undefined


-- Visible kind application

type family TF (a :: k) ( b :: l ) :: l where
  TF @_ @(l :: Nat) A = B
--   ^  ^ meta.type-application.haskell