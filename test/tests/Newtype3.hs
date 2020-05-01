-- SYNTAX TEST "source.haskell" "Indented multiline newtype declarations (= on same line)"

        newtype T =
          C T
 
      newtype T =
--    ^^^^^^^ keyword.other.newtype.haskell
--            ^ storage.type.haskell
--              ^ keyword.operator.eq.haskell
        C T
--      ^ constant.other.haskell
--        ^ storage.type.haskell

    newtype instance T =
--  ^^^^^^^ keyword.other.newtype.haskell
--          ^^^^^^^^ keyword.other.instance.haskell
--                   ^ storage.type.haskell
--                     ^ keyword.operator.eq.haskell
      C T
--    ^ constant.other.haskell
--      ^ storage.type.haskell
