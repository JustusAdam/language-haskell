-- SYNTAX TEST "source.haskell" "Issues surrounding reserved operators"


type a ==> b = a --> b
--           ^ keyword.operator.eq.haskell
--     ^^^ - keyword.operator.eq.haskell
--     ^^^       ^^^ - keyword.operator.arrow.haskell
type family a ==> b = a --> b
--                  ^ keyword.operator.eq.haskell
--            ^^^ - keyword.operator.eq.haskell keyword.operator.big-arrow.haskell
--                      ^^^ - keyword.operator.arrow.haskell
data a :==> b = a == b
--            ^ keyword.operator.eq.haskell
--     ^^^^ - keyword.operator.eq.haskell keyword.operator.big-arrow.haskell
--                ^^ - keyword.operator.eq.haskell
data a :==> b where
--     ^^^^ - keyword.operator.eq.haskell keyword.operator.big-arrow.haskell
  (:::) :: a ::: b -> c :==> d
-- ^^^       ^^^ - keyword.operator.double-colon.haskell
--                      ^^^^ - keyword.operator.eq.haskell keyword.operator.big-arrow.haskell

f :: a ::: b =| c --> d -> e ==> b
--     ^^^ keyword.operator.double-colon.haskell
--           ^               ^^ - keyword.operator.eq.haskell
--                 ^^ - keyword.operator.arrow.haskell
--                            ^^ - keyword.operator.big-arrow.haskell


(-::) :: a -> a -> a
-- <~--- - keyword.operator.double-colon.haskell
a -:: b = a
-- <~~--- - keyword.operator.double-colon.haskell

(:::) :: a -> a -> a
-- <~--- keyword.operator.double-colon.haskell
a ::: b = a
  ^^^ - keyword.operator.double-colon.haskell

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
