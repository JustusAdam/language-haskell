-- SYNTAX TEST "source.haskell" "Special record syntax"

  f :: Rec -> T
  f record@{ A = a, B = b, ..} 
--        ^ keyword.operator.infix.tight.at.haskell
--                         ^^ keyword.operator.double-dot.haskell

  f val@( pattern )
--     ^ keyword.operator.infix.tight.at.haskell
