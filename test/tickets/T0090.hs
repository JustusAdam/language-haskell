-- SYNTAX TEST "source.haskell" "Fixity declarations"

infixl 6 :+
-- <------ keyword.operator.haskell
--     ^ constant.numeric.haskell
--       ^^ keyword.operator.haskell
infixr 7 //
--     ^ constant.numeric.haskell
-- <------ keyword.operator.haskell
--       ^^ keyword.operator.haskell
    infix 2 `elem`
--  ^^^^^ keyword.operator.haskell
--        ^ constant.numeric.haskell
--          ^^^^^^ keyword.operator.function.infix.haskell
    infix 0 `Cons`
--  ^^^^^ keyword.operator.haskell
--        ^ constant.numeric.haskell
--          ^^^^^^ keyword.operator.function.infix.haskell
--           ^^^^ constant.other.haskell
