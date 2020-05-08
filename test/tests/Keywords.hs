-- SYNTAX TEST "source.haskell" "Reserved keywords"

anotherFunc :: MyData -> Int
--          ^^ keyword.operator.double-colon.haskell
--                    ^^ keyword.operator.arrow.haskell
anotherFunc arg = 
    let something = "hello" :: String
--                ^ keyword.operator.eq.haskell
--                          ^^ keyword.operator.double-colon.haskell
--  ^^^ keyword.other.let.haskell
    in case a :: B of
--  ^^ keyword.other.in.haskell
--     ^^^^ keyword.control.case.haskell
--            ^^ keyword.operator.double-colon.haskell
--                 ^^ keyword.control.of.haskell

        Just _ -> do
--             ^^ keyword.operator.arrow.haskell
--                ^^ keyword.control.do.haskell
          if a
--        ^^ keyword.control.if.haskell
          then b
--        ^^^^ keyword.control.then.haskell
          else c
--        ^^^^ keyword.control.else.haskell
  where 
-- <~~----- keyword.other.where.haskell
    expression argument = arg + 7

