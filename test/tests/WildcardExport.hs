-- SYNTAX TEST "source.haskell" "Bug with wildcard export consuming a single parenthesis"

module M
  ( T
    ( .. , ( ..! ), ( :.. ), P, Q )
--    ^^ variable.other.member.wildcard.haskell
--           ^^        ^^ - variable.other.member.wildcard.haskell
  , foo
--  ^^^ entity.name.function.haskell
--  ^^^ - invalid
  )
  where
