-- SYNTAX TEST "source.haskell" "GADT record syntax"


    data D :: A -> B -> Type where
      C :: { fld1 :: A, (&) :: B } -> D a b
--    ^ constant.other.haskell
--           ^^^^        ^ variable.other.definition.field.haskell
--         ^                     ^ punctuation.brace.haskell
--                   ^         ^      ^ storage.type.haskell
      

    data (!!!) :: Type where
      (:<>) :: { fld1 :: A, (&) :: B } -> (!!!)
--     ^^^ constant.other.operator.haskell
--               ^^^^        ^ variable.other.definition.field.haskell
--             ^                     ^ punctuation.brace.haskell
--                       ^         ^ storage.type.haskell     
--                                         ^^^ storage.type.operator.haskell
