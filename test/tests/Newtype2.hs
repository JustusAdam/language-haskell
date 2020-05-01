-- SYNTAX TEST "source.haskell" "Indented multiline newtype declarations (= on different line)"
     
        newtype T
          = C T

      newtype T
--    ^^^^^^ keyword.other.newtype.haskell
--            ^ storage.type.haskell
        = C T
--      ^ keyword.operator.eq.haskell
--        ^ constant.other.haskell
--          ^ storage.type.haskell

    newtype instance T
--  ^^^^^^^ keyword.other.newtype.haskell
--          ^^^^^^^^ keyword.other.instance.haskell
--                   ^ storage.type.haskell
      = C T
--    ^ keyword.operator.eq.haskell
--      ^ constant.other.haskell
--        ^ storage.type.haskell
