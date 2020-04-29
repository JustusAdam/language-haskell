-- SYNTAX TEST "source.haskell" "forall dot not parsed as an operator"

f :: forall a. a
--           ^ - keyword.operator.period.haskell
g :: forall a . a -> ( forall b . b ) -> a
--            ^                 ^ - keyword.operator.period.haskell

data Exts = forall var . Class var => Exts var
--          ^^^^^^ keyword.other.forall.haskell
--                     ^ - keyword.operator.period.haskell

data Exts where 
    F :: forall var . Class var => Exts var
--       ^^^^^^ keyword.other.forall.haskell
--                  ^ - keyword.operator.period.haskell