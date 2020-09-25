-- SYNTAX TEST "source.haskell" "Fixity declarations"


    infixl 3 :+
--  ^^^^^^ keyword.other.fixity.infixl.haskell
--         ^ constant.numeric.integral.decimal.haskell
--           ^^ constant.other.operator.infix.haskell

    infixr 7 ---:
--  ^^^^^^ keyword.other.fixity.infixr.haskell
--         ^ constant.numeric.integral.decimal.haskell
--           ^^^^ keyword.operator.infix.haskell

    infix 1 `Cons`
--  ^^^^^ keyword.other.fixity.infix.haskell
--        ^ constant.numeric.integral.decimal.haskell
--           ^^^^ constant.other.haskell
--          ^^^^^^ keyword.operator.function.infix.haskell

    infix 2 <|> -- comment
--  ^^^^^ keyword.other.fixity.infix.haskell
--        ^ constant.numeric.integral.decimal.haskell
--          ^^^ keyword.operator.infix.haskell
--              ^^^^^^^^^^ comment.line.double-dash.haskell
