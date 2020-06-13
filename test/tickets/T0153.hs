-- SYNTAX TEST "source.haskell" "Existential types"

    data E x = C x => Bar x A
--  ^^^^ keyword.other.data.haskell
--           ^ keyword.operator.eq.haskell
--                 ^^ keyword.operator.big-arrow.haskell
--                    ^^^ constant.other.haskell
--         ^     ^        ^ variable.other.generic-type.haskell
--       ^     ^            ^ storage.type.haskell
    data E x =C x=> Bar x A
--  ^^^^ keyword.other.data.haskell
--           ^ keyword.operator.eq.haskell
--               ^^ keyword.operator.big-arrow.haskell
--                  ^^^ constant.other.haskell
--         ^    ^       ^ variable.other.generic-type.haskell
--       ^    ^           ^ storage.type.haskell
    data E x = forall x. Bar x A
--  ^^^^ keyword.other.data.haskell
--           ^ keyword.operator.eq.haskell
--             ^^^^^^ keyword.other.forall.haskell
--                     ^ keyword.operator.period.haskell
--                       ^^^ constant.other.haskell
--         ^          ^      ^ variable.other.generic-type.haskell
--       ^                     ^ storage.type.haskell
    data E x = forall (x :: T) . C x => Bar x A
--  ^^^^ keyword.other.data.haskell
--           ^ keyword.operator.eq.haskell
--             ^^^^^^ keyword.other.forall.haskell
--                       ^^ keyword.operator.double-colon.haskell
--                             ^ keyword.operator.period.haskell
--                                   ^^ keyword.operator.big-arrow.haskell
--                                      ^^^ constant.other.haskell
--         ^           ^                    ^ variable.other.generic-type.haskell
--       ^                  ^    ^            ^ storage.type.haskell

    data E x =
--  ^^^^ keyword.other.data.haskell
--       ^ storage.type.haskell
--         ^ variable.other.generic-type.haskell
--           ^ keyword.operator.eq.haskell
        C x => Bar x A
--          ^^ keyword.operator.big-arrow.haskell
--             ^^^ constant.other.haskell
--        ^        ^ variable.other.generic-type.haskell
--      ^            ^ storage.type.haskell
    data E x =
--  ^^^^ keyword.other.data.haskell
--       ^ storage.type.haskell
--         ^ variable.other.generic-type.haskell
--           ^ keyword.operator.eq.haskell
        forall x. Bar x A
--      ^^^^^^ keyword.other.forall.haskell
--              ^ keyword.operator.period.haskell
--                ^^^ constant.other.haskell
--             ^      ^ variable.other.generic-type.haskell
--                      ^ storage.type.haskell
    data E x =
--  ^^^^ keyword.other.data.haskell
--       ^ storage.type.haskell
--         ^ variable.other.generic-type.haskell
--           ^ keyword.operator.eq.haskell
        forall x . C x => Bar x A
--      ^^^^^^ keyword.other.forall.haskell
--               ^ keyword.operator.period.haskell
--                     ^^ keyword.operator.big-arrow.haskell
--                        ^^^ constant.other.haskell
--             ^              ^ variable.other.generic-type.haskell
--                 ^            ^ storage.type.haskell


    data E x = forall x .
--  ^^^^ keyword.other.data.haskell
--       ^ storage.type.haskell
--           ^ keyword.operator.eq.haskell
--             ^^^^^^ keyword.other.forall.haskell
--         ^          ^ variable.other.generic-type.haskell
--                      ^ keyword.operator.period.haskell
      ( C x
--      ^ storage.type.haskell
--        ^ variable.other.generic-type.haskell
      , D x
--      ^ storage.type.haskell
--        ^ variable.other.generic-type.haskell
      , E x
--      ^ storage.type.haskell
--        ^ variable.other.generic-type.haskell
      ) => Bar x A
--      ^^ keyword.operator.big-arrow.haskell
--         ^^^ constant.other.haskell
--             ^ variable.other.generic-type.haskell
--               ^ storage.type.haskell

    f :: forall x. C x => Bar x A
--  ^  entity.name.function.haskell
--    ^^ keyword.operator.double-colon.haskell
--       ^^^^^^ keyword.other.forall.haskell
--               ^ keyword.operator.period.haskell
--                     ^^ keyword.operator.big-arrow.haskell
--              ^    ^        ^ variable.other.generic-type.haskell
--                 ^      ^^^     storage.type.haskell
