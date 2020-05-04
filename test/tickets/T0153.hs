-- SYNTAX TEST "source.haskell" "Existential types"

    data E x = C x => Bar x A
--  ^^^^ keyword.other.data.haskell
--           ^ keyword.operator.eq.haskell
--                 ^^ keyword.operator.big-arrow.haskell
--                    ^^^ constant.other.haskell
--         ^     ^        ^ variable.other.generic-type.haskell
--       ^     ^            ^ storage.type.haskell
--  ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.adt.haskell
    data E x = forall x. Bar x A
--  ^^^^ keyword.other.data.haskell
--           ^ keyword.operator.eq.haskell
--             ^^^^^^ keyword.other.forall.haskell
--                     ^ keyword.operator.period.haskell
--                       ^^^ constant.other.haskell
--         ^          ^      ^ variable.other.generic-type.haskell
--       ^                     ^ storage.type.haskell
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.adt.haskell
    data E x = forall x . C x => Bar x A
--  ^^^^ keyword.other.data.haskell
--           ^ keyword.operator.eq.haskell
--             ^^^^^^ keyword.other.forall.haskell
--                      ^ keyword.operator.period.haskell
--                            ^^ keyword.operator.big-arrow.haskell
--                               ^^^ constant.other.haskell
--         ^          ^              ^ variable.other.generic-type.haskell
--       ^                ^            ^ storage.type.haskell
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.adt.haskell


    f :: forall x. C x => Bar x A
--  ^  entity.name.function.haskell
--    ^^ keyword.operator.double-colon.haskell
--       ^^^^^^ keyword.other.forall.haskell
--               ^ keyword.operator.period.haskell
--                     ^^ keyword.operator.big-arrow.haskell
--              ^    ^        ^ variable.other.generic-type.haskell
--                 ^      ^^^     storage.type.haskell
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.type-declaration.haskell
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.declaration.adt.haskell

