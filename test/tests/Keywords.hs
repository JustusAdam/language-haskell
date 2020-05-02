-- SYNTAX TEST "source.haskell" "Reserved keywords"

anotherFunc :: MyData -> Int
--          ^^ keyword.operator.double-colon.haskell
--                    ^^ keyword.operator.arrow.haskell
anotherFunc arg = 
    let something = "hello" :: String
--                ^ keyword.operator.haskell
--                          ^^ keyword.operator.double-colon.haskell
--  ^^^ keyword.other.let.haskell
    in case a :: B of
--  ^^ keyword.other.in.haskell
--            ^^ keyword.operator.double-colon.haskell
--     ^^^^        ^^ keyword.control.haskell
        Just _ -> do
--             ^^ keyword.operator.haskell
--                ^^ keyword.control.haskell
          if a
--        ^^ keyword.control.haskell
          then b
--        ^^^^ keyword.control.haskell
          else c
--        ^^^^ keyword.control.haskell
  where 
-- <~~----- keyword.other.where.haskell
    expression argument = arg + 7

