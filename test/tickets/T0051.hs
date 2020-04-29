-- SYNTAX TEST "source.haskell" "Type-level naturals"

f :: A 3 -> B 4
--     ^      ^ constant.numeric.haskell

let x = (something :: MyLabel 5)
--                            ^ constant.numeric.haskell
g = f @( F 3 + 4 )
--         ^   ^ constant.numeric.haskell
