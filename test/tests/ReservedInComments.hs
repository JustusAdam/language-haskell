
-- SYNTAX TEST "source.haskell" "Reserved names in comments"

data A = B -- where
--         ^^^^^^^^ comment.line.double-dash.haskell
--            ^^^^^ - keyword.other.where.haskell
data instance A = B -- where
--                  ^^^^^^^^ comment.line.double-dash.haskell
--                     ^^^^^ - keyword.other.where.haskell

data Foo a {- = y -}
--            ^ - keyword.operator.eq.haskell
--         ^^^^^^ comment.block.haskell
  = A

type Foo a {- = A -}
--            ^ - keyword.operator.eq.haskell
--         ^^^^^^ comment.block.haskell
  = A

f   {- :: xyz -}
--     ^^ - keyword.operator.double-colon.haskell
--  ^^^^^^^^^ comment.block.haskell
  :: A -> B

f   {- :: xyz -}
--     ^^ - keyword.operator.double-colon.haskell
--  ^^^^^^^^^^^^ comment.block.haskell
  :: A -> B

data Foo a -- = y
--            ^ - keyword.operator.eq.haskell
--         ^^^^^^ comment.line.double-dash.haskell
  = A

type Foo a -- = A
--            ^ - keyword.operator.eq.haskell
--         ^^^^^^ comment.line.double-dash.haskell
  = A

f   -- :: xyz
--     ^^ - keyword.operator.double-colon.haskell
--  ^^^^^^^^^ comment.line.double-dash.haskell
  :: A -> B
