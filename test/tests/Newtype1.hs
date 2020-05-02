-- SYNTAX TEST "source.haskell" "Indented newtype declarations"

        newtype T = C T 

      newtype T = C T
--    ^^^^^^^ keyword.other.newtype.haskell
--              ^ keyword.operator.eq.haskell
--                ^ constant.other.haskell
--            ^     ^ storage.type.haskell


    newtype instance T = C T
--  ^^^^^^^ keyword.other.newtype.haskell
--          ^^^^^^^^ keyword.other.instance.haskell
--                     ^ keyword.operator.eq.haskell
--                       ^ constant.other.haskell
--                   ^     ^ storage.type.haskell

