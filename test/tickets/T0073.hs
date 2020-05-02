-- SYNTAX TEST "source.haskell" "Visible type application"

function = 
    let l = [] @[( Int, f [ Bool ] )] in
--             ^ meta.type-application.haskell
--                 ^^^ storage.type.haskell 
--                      ^ variable.other.generic-type.haskell
    let x = "Hello" @String in
--                  ^ meta.type-application.haskell 
--                   ^^^^^^ storage.type.haskell
    let c@(Some pattern) = undefined in
--       ^ - meta.type-application.haskell
--         ^^^^ constant.other.haskell
    let g = f @( g ([]) -> String ) in
--            ^ meta.type-application.haskell
--               ^ variable.other.generic-type.haskell
    let h = k @_ @a @Int
--            ^  ^  ^ meta.type-application.haskell
    let a = b @ c
--            ^ - meta.type-application.haskell
    undefined

g = f @Bool(A)
--    ^ meta.type-application.haskell
--     ^^^^ storage.type.haskell
--          ^ - storage.type.haskell
