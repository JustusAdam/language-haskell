-- SYNTAX TEST "source.haskell" "Fields in GADTs"

data A where
    A :: { field1 :: Int, field2 :: Int } -> A
--         ^^^^^^         ^^^^^^ meta.record.definition.haskell variable.other.definition.field.haskell
--         ^^^^^^         ^^^^^^^ - variable.other.generic-type.haskell
--                   ^^^            ^^^ meta.record.definition.haskell storage.type.haskell
