-- SYNTAX TEST "source.haskell" "Fixity declarations"

infixl 6 :+
-- <------ keyword.other.fixity.infixl.haskell
--     ^ constant.numeric.integral.decimal.haskell
--       ^^ constant.other.operator.infix.haskell
infixr 7 //
--     ^ constant.numeric.integral.decimal.haskell
-- <------ keyword.other.fixity.infixr.haskell
--       ^^ keyword.operator.infix.haskell
    infix 2 `elem`
--  ^^^^^ keyword.other.fixity.infix.haskell
--        ^ constant.numeric.integral.decimal.haskell
--          ^^^^^^ keyword.operator.function.infix.haskell
    infix 0 `Cons`
--  ^^^^^ keyword.other.fixity.infix.haskell
--        ^ constant.numeric.integral.decimal.haskell
--          ^^^^^^ keyword.operator.function.infix.haskell
--           ^^^^ constant.other.haskell
