-- SYNTAX TEST "source.haskell" "Custom operators"

data (:->)
--    ^^^ meta.declaration.adt.haskell storage.type.haskell
data (:=>) a b c = D
--    ^^^ meta.declaration.adt.haskell storage.type.haskell
--         ^ ^ ^ variable.other.generic-type.haskell
--                 ^ constant.other.haskell

f :: a :-> b -> c :=> e
--     ^^^ storage.type.operator.haskell
--                ^^^ storage.type.operator.haskell

