-- SYNTAX TEST "source.haskell" "Indented multiline data declarations (= on same line)"

        data T =
          C T
 
      data T =
--    ^^^^ keyword.other.data.haskell
--         ^ storage.type.haskell
--           ^ keyword.operator.eq.haskell
        C T
--      ^ constant.other.haskell
--        ^ storage.type.haskell

    data instance T =
--  ^^^^ keyword.other.data.haskell
--       ^^^^^^^^ keyword.other.instance.haskell
--                ^ storage.type.haskell
--                  ^ keyword.operator.eq.haskell
      C T
--    ^ constant.other.haskell
--      ^ storage.type.haskell
