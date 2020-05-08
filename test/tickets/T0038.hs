-- SYNTAX TEST "source.haskell" "Record field names"

data Data = Data { foo :: Int, bar :: Int }
--                 ^^^ meta.record.definition.haskell variable.other.field.definition.haskell
--                             ^^^ meta.record.definition.haskell variable.other.field.definition.haskell
data Data = Data { 
    foo :: Int, bar :: Int
--  ^^^ meta.record.definition.haskell variable.other.field.definition.haskell
--              ^^^ meta.record.definition.haskell variable.other.field.definition.haskell
  }
data Data = Data { 
    foo :: Int,
--  ^^^ meta.record.definition.haskell variable.other.field.definition.haskell
    bar :: Int
--  ^^^ meta.record.definition.haskell variable.other.field.definition.haskell
    }
data Data = Data { 
      foo :: Int
--    ^^^ meta.record.definition.haskell variable.other.field.definition.haskell
    , bar :: Int
--    ^^^ meta.record.definition.haskell variable.other.field.definition.haskell
    }
