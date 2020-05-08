-- SYNTAX TEST "source.haskell" "Record fields with extra spaces"

data Record a b =
  Record
    { short  :: a
--    ^^^^^ variable.other.field.definition.haskell
--              ^ variable.other.generic-type.haskell
    , longer :: b
--    ^^^^^^ variable.other.field.definition.haskell
--              ^ variable.other.generic-type.haskell
    , tiny   :: a
--    ^^^^ variable.other.field.definition.haskell
--              ^ variable.other.generic-type.haskell
    , spacious::b
--    ^^^^^^^^ variable.other.field.definition.haskell
--              ^ variable.other.generic-type.haskell
    }
