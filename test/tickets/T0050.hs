-- SYNTAX TEST "source.haskell" "Type-level symbols"

instance Has Point "of" Int
--                 ^^^^ string.quoted.double.haskell

example = from (Point 1 2) (Get :: Label "of")
--                                       ^^^^ string.quoted.double.haskell
