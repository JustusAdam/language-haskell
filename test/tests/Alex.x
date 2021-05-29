-- SYNTAX TEST "source.haskell.alex" "Alex"

{
-- <- meta.embedded.block.haskell
module Alex where
-- <------ keyword.other.module.haskell
--     ^^^^ meta.declaration.module.haskell
}
-- <- meta.embedded.block.haskell

%wrapper "basic"
-- <-------- keyword.operator.pragma.alex
--       ^^^^^^^ string.quoted.double.alex
--       ^     ^ punctuation.quote.double.alex

$digit = 0-9
-- <------ variable.parameter.alex
--     ^  ^ keyword.operator.alex
$alpha = [a-zA-Z]
--       ^      ^ punctuation.brackets.alex

@foobar = foo | bar
-- <------- entity.name.class.alex
--      ^     ^ keyword.operator.alex

tokens :-
--     ^^ keyword.operator.rules.alex
<0> $white+         ;
-- <-- storage.type.alex
--                  ^ punctuation.semicolon.alex
<0> $digit+         { NUMBER }
--                  ^ punctuation.block.begin.alex
--                           ^ punctuation.block.end.alex
<0> $alpha+         { IDENT }

{

data Token
    = NUMBER
    | IDENT

main = undefined

}
