-- SYNTAX TEST "source.haskell" "Type-level naturals"

f :: A 3 -> B 4
--     ^      ^ constant.numeric.integral.decimal.haskell

let x = (something :: MyLabel 5)
--                            ^ constant.numeric.integral.decimal.haskell
g = f @( F 3 + 4 )
--         ^   ^ constant.numeric.integral.decimal.haskell
