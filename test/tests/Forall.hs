-- SYNTAX TEST "source.haskell" "forall dot over multiple lines"



  f :: forall a
--     ^^^^^^ keyword.other.forall.haskell
    . b
--  ^ keyword.operator.period.haskell


  type T :: forall a
--          ^^^^^^ keyword.other.forall.haskell
         .  b
--       ^ keyword.operator.period.haskell

  type T ( a :: forall b
--              ^^^^^^ keyword.other.forall.haskell
    . c ) = D
--  ^ keyword.operator.period.haskell
