-- SYNTAX TEST "source.haskell" "Record field names"

data Data = Data { foo :: Int, bar :: Int }
--                 ^^^ meta.record.definition.haskell variable.other.definition.field.haskell
--                             ^^^ meta.record.definition.haskell variable.other.definition.field.haskell
data Data = Data { 
    foo :: Int, bar :: Int
--  ^^^ meta.record.definition.haskell variable.other.definition.field.haskell
--              ^^^ meta.record.definition.haskell variable.other.definition.field.haskell
  }
data Data = Data { 
    foo :: Int,
--  ^^^ meta.record.definition.haskell variable.other.definition.field.haskell
    bar :: Int
--  ^^^ meta.record.definition.haskell variable.other.definition.field.haskell
    }
data Data = Data { 
      foo :: Int
--    ^^^ meta.record.definition.haskell variable.other.definition.field.haskell
    , bar :: Int
--    ^^^ meta.record.definition.haskell variable.other.definition.field.haskell
    }
