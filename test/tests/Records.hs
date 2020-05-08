-- SYNTAX TEST "source.haskell" "Special record syntax"

  f :: Rec -> T
  f record@( Rec { a = A, b = B, .. } )
--        ^ keyword.operator.infix.tight.at.haskell
--                 ^      ^ variable.other.field.haskell
--                               ^^ variable.other.field.wildcard.haskell
--               ^^^^^^^^^^^^^^^^^^^^ meta.record.haskell

  f :: Rec -> Rec
  f x = x { a = A, b = B, .. }
--          ^      ^ variable.other.field.haskell
--                        ^^ variable.other.field.wildcard.haskell
--        ^^^^^^^^^^^^^^^^^^^^ meta.record.haskell

  f val@( pattern )
--     ^ keyword.operator.infix.tight.at.haskell
  f (+)@(g)
--     ^ keyword.operator.infix.tight.at.haskell

  f@@g
-- ^^ -keyword.operator.infix.tight.at.haskell

  f (+)@@(g)
--     ^^ -keyword.operator.infix.tight.at.haskell

  f a@+b
--   ^ -keyword.operator.infix.tight.at.haskell
