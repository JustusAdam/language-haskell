-- SYNTAX TEST "source.haskell" "Using | in types in an ADT"


    data A = A (T1 || T2) | A { f :: A |-| B }
--  ^^^^ keyword.other.data.haskell
--                        ^ keyword.operator.pipe.haskell
--                              ^ variable.other.member.definition.haskell
--                 ^^                  ^^^ storage.type.operator.infix.haskell
--       ^      ^^    ^^             ^     ^ storage.type.haskell
