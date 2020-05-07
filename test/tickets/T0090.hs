-- SYNTAX TEST "source.haskell" "Fixity declarations"

infixl 6 :+
-- <------ keyword.other.infixl.haskell
--     ^ constant.numeric.haskell
--       ^^ keyword.operator.infix.haskell
infixr 7 //
--     ^ constant.numeric.haskell
-- <------ keyword.other.infixr.haskell
--       ^^ keyword.operator.infix.haskell
    infix 2 `elem`
--  ^^^^^ keyword.other.infix.haskell
--        ^ constant.numeric.haskell
--          ^^^^^^ keyword.operator.function.infix.haskell
    infix 0 `Cons`
--  ^^^^^ keyword.other.infix.haskell
--        ^ constant.numeric.haskell
--          ^^^^^^ keyword.operator.function.infix.haskell
--           ^^^^ constant.other.haskell
