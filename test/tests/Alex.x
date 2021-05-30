-- SYNTAX TEST "source.haskell.alex" "Alex"

{
-- <- meta.embedded.block.haskell
module Alex where
-- <------ keyword.other.module.haskell
--     ^^^^ meta.declaration.module.haskell
}
-- <- meta.embedded.block.haskell

%wrapper "basic"
-- <-------- entity.name.pragma.alex
--       ^^^^^^^ string.quoted.double.alex
--       ^     ^ punctuation.quote.double.alex

$digit = 0-9
-- <------ entity.name.macro.character-set.alex
--     ^  ^ keyword.operator.alex
$alpha = [a-zA-Z]
--       ^      ^ punctuation.bracket.alex

@foobar = foo | bar
-- <------- entity.name.macro.regular-expression.alex
--      ^     ^ keyword.operator.alex

-- comment {-
tokens :-
--     ^^ keyword.operator.rules.alex
-- <--------- - comment.block.alex
-- comment -}
<0>   $white+         ;
-- <-- meta.startcode.alex
-- <- punctuation.bracket.startcode.alex
-- <~~- punctuation.bracket.startcode.alex
--                    ^ punctuation.semicolon.alex
<0>   $digit+         { NUMBER }
--                    ^ punctuation.block.begin.alex
--                             ^ punctuation.block.end.alex
<0,1> $alpha+         { IDENT }
--^ punctuation.comma.startcode.alex
<foo,bar> {
-- <--------- meta.block.startcode.alex
-- <- punctuation.bracket.startcode.alex
--      ^ punctuation.bracket.startcode.alex
--   ^^^ variable.other.startcode.alex
--        ^ punctuation.block.startcode.begin.alex
    \n                ;
--                    ^ punctuation.semicolon.alex
    @foobar           { FOO }
--  ^^^^^^^ - source.haskell
}
-- <- punctuation.block.startcode.end.alex

{-
-- <- punctuation.definition.comment.alex
{-
nested comment
-- <----------------- comment.block.alex
-}
-}


{

data Token
    = NUMBER
    | IDENT
    | FOO

main = undefined

}
