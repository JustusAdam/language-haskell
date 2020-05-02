-- SYNTAX TEST "source.haskell" "Indented data declarations"

        data T = C T 

      data T = C T
--    ^^^^ keyword.other.data.haskell
--           ^ keyword.operator.eq.haskell
--             ^ constant.other.haskell
--         ^     ^ storage.type.haskell


    data instance T = C T
--  ^^^^ keyword.other.data.haskell
--       ^^^^^^^^ keyword.other.instance.haskell
--                  ^ keyword.operator.eq.haskell
--                    ^ constant.other.haskell
--                ^     ^ storage.type.haskell

