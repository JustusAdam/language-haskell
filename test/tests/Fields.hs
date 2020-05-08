-- SYNTAX TEST "source.haskell" "Record fields"

data Rec = Rec
       { fld1 :: F, -- }
--       ^^^^ variable.other.member.definition.haskell
--            ^^ keyword.operator.double-colon.haskell
--               ^ storage.type.haskell
--                  ^^^^ comment.line.double-dash.haskell
fld2 :: F
-- <---- variable.other.member.definition.haskell
--   ^^ keyword.operator.double-colon.haskell
--      ^ storage.type.haskell
      , fld3
--      ^^^^ variable.other.member.definition.haskell
:: F
-- <-- keyword.operator.double-colon.haskell
-- ^ storage.type.haskell
  , fld4 :: F, -- no :: F, no :: F }
--  ^^^^ variable.other.member.definition.haskell
--       ^^ keyword.operator.double-colon.haskell
--          ^ storage.type.haskell
  fld5 :: F -- , no :: F} ,
-- <~~----  variable.other.member.definition.haskell
--        ^ storage.type.haskell
  }


data Rec = Rec
       { (& ) :: F, -- }
--        ^ variable.other.member.definition.haskell
--            ^^ keyword.operator.double-colon.haskell
--               ^ storage.type.haskell
--                  ^^^^ comment.line.double-dash.haskell
(<>) :: F
-- <~-- variable.other.member.definition.haskell
--   ^^ keyword.operator.double-colon.haskell
--      ^ storage.type.haskell
      , (  !!)
--         ^^ variable.other.member.definition.haskell
:: F, (+::) :: F
-- <-- keyword.operator.double-colon.haskell
-- ^ storage.type.haskell
--     ^^^ variable.other.member.definition.haskell
--          ^^ keyword.operator.double-colon.haskell
--             ^ storage.type.haskell
  , ( ++ ) :: F, -- no :: F, no :: F }
--    ^^ variable.other.member.definition.haskell
--         ^^ keyword.operator.double-colon.haskell
--            ^ storage.type.haskell
  (!::) :: F -- , no :: F} ,
-- <~~~---  variable.other.member.definition.haskell
--         ^ storage.type.haskell
  }


data Rec3 = Rec3 {}
--               ^^ meta.record.definition.haskell

data Rec4 = Rec4
  {
-- <~~- meta.record.definition.haskell
}
-- <- meta.record.definition.haskell
