-- SYNTAX TEST "source.haskell" "Special record syntax"

  f :: Rec -> T
  f record@{ a = A, b = B, .. }
--        ^ keyword.operator.infix.tight.at.haskell
--                         ^^ keyword.operator.double-dot.haskell

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
