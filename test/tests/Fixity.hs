-- SYNTAX TEST "source.haskell" "Fixity declarations"


    infixl 3 :+
--  ^^^^^^ keyword.other.infixl.haskell
--         ^ constant.numeric.integral.decimal.haskell
--           ^^ keyword.operator.infix.haskell

    infixr 7 ---:
--  ^^^^^^ keyword.other.infixr.haskell
--         ^ constant.numeric.integral.decimal.haskell
--           ^^^^ keyword.operator.infix.haskell

    infix 1 `Cons`
--  ^^^^^ keyword.other.infix.haskell
--        ^ constant.numeric.integral.decimal.haskell
--           ^^^^ constant.other.haskell
--          ^^^^^^ keyword.operator.function.infix.haskell

    infix 2 <|> -- comment
--  ^^^^^ keyword.other.infix.haskell
--        ^ constant.numeric.integral.decimal.haskell
--          ^^^ keyword.operator.infix.haskell
--              ^^^^^^^^^^ comment.line.double-dash.haskell
