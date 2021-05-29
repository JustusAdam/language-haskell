-- SYNTAX TEST "source.haskell.happy" "Happy"

{
-- <- meta.embedded.block.haskell
module Happy where
-- <------ keyword.other.module.haskell
--     ^^^^ meta.declaration.module.haskell
}
-- <- meta.embedded.block.haskell

%monad { P }
-- <------ keyword.operator.pragma.happy
--     ^ punctuation.block.begin.happy
--         ^ punctuation.block.end.happy

%name parse
%tokentype { Token }
%error { parseError }

%token
    '+'     { PLUS }
--  ^^^ string.quoted.single.happy
--  ^ ^ punctuation.quote.single.happy
    num     { NUMBER $$ }

%left '+'

%%
-- <- keyword.operator.separator.happy

value :: { AST }
--    ^^ keyword.operator.type.happy
      : value '+' value { Add $1 $3 }
--    ^ keyword.operator.rule.happy
      | num             { Number $1 }
--    ^ keyword.operator.alt.happy

{

data Token
    = PLUS
    | NUMBER Int

data AST
    = Add AST AST
    | Number Int

}
