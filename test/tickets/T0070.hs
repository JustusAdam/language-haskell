-- SYNTAX TEST "source.haskell" "Custom operators"

data (:-> )
--    ^^^ meta.declaration.adt.haskell storage.type.operator.haskell
data ( :=>) a b c = D
--     ^^^ meta.declaration.adt.haskell storage.type.operator.haskell
--          ^ ^ ^ variable.other.generic-type.haskell
--                  ^ constant.other.haskell

f :: a :-> b -> c :=> e
--     ^^^ storage.type.operator.infix.haskell
--           ^^ keyword.operator.arrow.haskell
--                ^^^ storage.type.operator.infix.haskell

