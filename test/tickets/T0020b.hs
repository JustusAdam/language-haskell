-- SYNTAX TEST "source.haskell" "Fields in GADTs"

data A where
    A :: { field1 :: Int, field2 :: Int } -> A
--         ^^^^^^         ^^^^^^ meta.record.definition.haskell variable.other.field.definition.haskell
--         ^^^^^^         ^^^^^^^ - variable.other.generic-type.haskell
--                   ^^^            ^^^ meta.record.definition.haskell storage.type.haskell

data B where
  B
    :: { field3 :: Bool
--       ^^^^^^ meta.record.definition.haskell variable.other.field.definition.haskell
--       ^^^^^^^ - variable.other.generic-type.haskell
       , field4 :: Int
--       ^^^^^^ meta.record.definition.haskell variable.other.field.definition.haskell
--       ^^^^^^^ - variable.other.generic-type.haskell
       }
    -> B