-- SYNTAX TEST "source.haskell" "Ticks in type constructors"

data A = ABC (X,X) | ABC'' (X, X)
--                   ^^^^^ constant.other.haskell
--                      ^^ - string.quoted.single.haskell
pattern ABC' = ABC''
--      ^^^^   ^^^^^ constant.other.haskell
--         ^^^^^^^^^ - string.quoted.single.haskell

data X = XY'' [X] | XY'''
--       ^^^^       ^^^^^ constant.other.haskell
--         ^^^^^^^^^^^^^^ - string.quoted.single.haskell

type X'' = 'XY''
--   ^^^    ^^^^ storage.type.haskell
--    ^^^^^^^^^^ - string.quoted.single.haskell

f'' :: proxy ( 'ABC '( 'XY''','XY'' '[ 'XY''','XY''']) ':-> a )
-- <--- entity.name.function.haskell
--              ^^^     ^^^^^  ^^^^     ^^^^^  ^^^^^ storage.type.haskell
-- <-------------------------------------------------------------- - string.quoted.single.haskell

g'' :: A
-- <--- entity.name.function.haskell
-- <--- - string.quoted.single.haskell
g'' = ABC''' XY'''
--    ^^^^^^ ^^^^^ constant.other.haskell
-- <------------------- - string.quoted.single.haskell

type Ticked' '(a,b) = '(a,b)
--   ^^^^^^^ storage.type.haskell
--         ^^^ - string.quoted.single.haskell
