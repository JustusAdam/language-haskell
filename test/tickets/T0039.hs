-- SYNTAX TEST "source.haskell" "forall keyword in existential types"

data Exts = forall var . Class var => Exts var
--          ^^^^^^ keyword.other.forall.haskell

data Exts where 
    F :: forall var . Class var => Exts var
--       ^^^^^^ keyword.other.forall.haskell