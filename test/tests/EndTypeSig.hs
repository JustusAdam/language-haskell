-- SYNTAX TEST "source.haskell" "Type annotation should end with closing brackets"


    ( x
      :: a b c ) d e f
--       ^ ^ ^ variable.other.generic-type.haskell
--               ^ ^ ^ - variable.other.generic-type.haskell

    (# x
      :: a b c #) d e f
--       ^ ^ ^ variable.other.generic-type.haskell
--               ^ ^ ^ - variable.other.generic-type.haskell

    [ x
      :: a b c ] d e f
--       ^ ^ ^ variable.other.generic-type.haskell
--               ^ ^ ^ - variable.other.generic-type.haskell

    ( x :: a b c ) d e f
--         ^ ^ ^ variable.other.generic-type.haskell
--                 ^ ^ ^ - variable.other.generic-type.haskell

    (# x :: a b c #) d e f
--          ^ ^ ^ variable.other.generic-type.haskell
--                   ^ ^ ^ - variable.other.generic-type.haskell

    [ x :: a b c ] d e f
--         ^ ^ ^ variable.other.generic-type.haskell
--                 ^ ^ ^ - variable.other.generic-type.haskell