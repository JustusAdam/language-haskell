-- SYNTAX TEST "source.haskell" "Record fields with extra spaces"

data Record a b =
  Record
    { short  :: a
--    ^^^^^ variable.other.definition.field.haskell
--              ^ variable.other.generic-type.haskell
    , longer :: b
--    ^^^^^^ variable.other.definition.field.haskell
--              ^ variable.other.generic-type.haskell
    , tiny   :: c
--    ^^^^ variable.other.definition.field.haskell
--              ^ variable.other.generic-type.haskell
    }
