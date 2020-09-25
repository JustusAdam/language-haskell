-- SYNTAX TEST "source.haskell" "GADT record syntax"

    data D :: A -> B -> Type where
      C :: { fld1 :: A, (&) :: B } -> D a b
--    ^ constant.other.haskell
--           ^^^^        ^ variable.other.member.definition.haskell
--         ^                     ^ punctuation.brace.haskell
--                   ^         ^      ^ storage.type.haskell
      

    data D a where
      C :: { fld :: forall (a :: B). C a => T a }
--    ^ constant.other.haskell
--           ^^^ variable.other.member.definition.haskell
--                               ^   ^      ^ storage.type.haskell
--                          ^          ^      ^ variable.other.generic-type.haskell

    data (!!!) :: Type where
      (:<>) :: { fld1 :: A, (&) :: B } -> (!!!)
--     ^^^ constant.other.operator.prefix.haskell
--               ^^^^        ^ variable.other.member.definition.haskell
--             ^                     ^ punctuation.brace.haskell
--                       ^         ^ storage.type.haskell     
--                                         ^^^ storage.type.operator.haskell

    data D :: A -> B -> Type where { C :: { fld1 :: A, (&) :: B } -> D a b }
--                                   ^ constant.other.haskell
--                                          ^^^^        ^ variable.other.member.definition.haskell
--                                        ^                     ^ punctuation.brace.haskell
--                                                  ^         ^      ^ storage.type.haskell

    foo :: A
--  ^^^^^^^^ - meta.declaration.data.generalized.haskell
--  ^^^ entity.name.function.haskell
--         ^ storage.type.haskell
