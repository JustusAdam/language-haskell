-- SYNTAX TEST "source.haskell" "Highlighting in multiline type declarations"


  type GetDecks =
-- <~~---- keyword.other.type.haskell
--     ^^^^^^^^ storage.type.haskell
--              ^ keyword.operator.eq.haskell
    MethodCall "getDecks" Cards
--  ^^^^^^^^^^            ^^^^^ storage.type.haskell
  
  type GetDecks
-- <~~---- keyword.other.type.haskell
--     ^^^^^^^^ storage.type.haskell
    = MethodCall "getDecks" Cards
--  ^ keyword.operator.eq.haskell
--    ^^^^^^^^^^            ^^^^^ storage.type.haskell


type GetDecks =
-- <---- keyword.other.type.haskell
--   ^^^^^^^^ storage.type.haskell
--            ^ keyword.operator.eq.haskell
  MethodCall "getDecks" Cards
-- <~~--------- storage.type.haskell
--                      ^^^^^ storage.type.haskell

type GetDecks
-- <---- keyword.other.type.haskell
--   ^^^^^^^^ storage.type.haskell
  = MethodCall "getDecks" Cards
-- <~~- keyword.operator.eq.haskell
--  ^^^^^^^^^^            ^^^^^ storage.type.haskell
