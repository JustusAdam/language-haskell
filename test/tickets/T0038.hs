-- SYNTAX TEST "source.haskell" "Record field names"

data Data = Data { foo :: Int, bar :: Int }
--                 ^^^ meta.record.definition.haskell variable.other.member.definition.haskell
--                             ^^^ meta.record.definition.haskell variable.other.member.definition.haskell
data Data = Data { 
    foo :: Int, bar :: Int
--  ^^^ meta.record.definition.haskell variable.other.member.definition.haskell
--              ^^^ meta.record.definition.haskell variable.other.member.definition.haskell
  }
data Data = Data { 
    foo :: Int,
--  ^^^ meta.record.definition.haskell variable.other.member.definition.haskell
    bar :: Int
--  ^^^ meta.record.definition.haskell variable.other.member.definition.haskell
    }
data Data = Data { 
      foo :: Int
--    ^^^ meta.record.definition.haskell variable.other.member.definition.haskell
    , bar :: Int
--    ^^^ meta.record.definition.haskell variable.other.member.definition.haskell
    }
