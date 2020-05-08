-- SYNTAX TEST "source.haskell" "Record fields with extra spaces"

data Record a b =
  Record
    { short  :: a
--    ^^^^^ variable.other.member.definition.haskell
--              ^ variable.other.generic-type.haskell
    , longer :: b
--    ^^^^^^ variable.other.member.definition.haskell
--              ^ variable.other.generic-type.haskell
    , tiny   :: a
--    ^^^^ variable.other.member.definition.haskell
--              ^ variable.other.generic-type.haskell
    , spacious::b
--    ^^^^^^^^ variable.other.member.definition.haskell
--              ^ variable.other.generic-type.haskell
    }
