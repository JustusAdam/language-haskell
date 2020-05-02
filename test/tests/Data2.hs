-- SYNTAX TEST "source.haskell" "Indented multiline data declarations (= on different line)"
     
        data T
          = C T

      data T
--    ^^^^ keyword.other.data.haskell
--         ^ storage.type.haskell
        = C T
--      ^ keyword.operator.eq.haskell
--        ^ constant.other.haskell
--          ^ storage.type.haskell

    data instance T
--  ^^^^ keyword.other.data.haskell
--       ^^^^^^^^ keyword.other.instance.haskell
--                ^ storage.type.haskell
      = C T
--    ^ keyword.operator.eq.haskell
--      ^ constant.other.haskell
--        ^ storage.type.haskell
