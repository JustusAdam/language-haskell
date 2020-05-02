-- SYNTAX TEST "source.haskell" "Highlighting in multiline data declarations"

  data A = A B

  data GetDecks = MethodCall "getDecks" Cards
-- <~~---- keyword.other.data.haskell
--              ^ keyword.operator.eq.haskell
--                ^^^^^^^^^^ constant.other.haskell
--     ^^^^^^^^                         ^^^^^ storage.type.haskell

  data GetDecks =
-- <~~---- keyword.other.data.haskell
--     ^^^^^^^^ storage.type.haskell
--              ^ keyword.operator.eq.haskell
    MethodCall "getDecks" Cards
--  ^^^^^^^^^^ constant.other.haskell
--                        ^^^^^ storage.type.haskell
  
  data instance GetDecks
-- <~~---- keyword.other.data.haskell
--     ^^^^^^^^ keyword.other.instance.haskell
--              ^^^^^^^^ storage.type.haskell
    = MethodCall "getDecks" Cards
--  ^ keyword.operator.eq.haskell
--    ^^^^^^^^^^ constant.other.haskell
--                          ^^^^^ storage.type.haskell


newtype GetDecks
-- <------- keyword.other.newtype.haskell
--      ^^^^^^^^ storage.type.haskell
  = MethodCall "getDecks" Cards
-- <~~- keyword.operator.eq.haskell
--  ^^^^^^^^^^ constant.other.haskell
--                        ^^^^^ storage.type.haskell


newtype instance GetDecks =
-- <------- keyword.other.newtype.haskell
--      ^^^^^^^^ keyword.other.instance.haskell
--               ^^^^^^^^ storage.type.haskell
--                        ^ keyword.operator.eq.haskell
  MethodCall "getDecks" Cards
-- <~~--------- constant.other.haskell
--                      ^^^^^ storage.type.haskell

