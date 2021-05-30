-- SYNTAX TEST "source.haskell.happy" "Happy"

{
-- <- meta.embedded.block.haskell
module Happy where
-- <------ keyword.other.module.haskell
--     ^^^^ meta.declaration.module.haskell
}
-- <- meta.embedded.block.haskell

%monad { P }
-- <------ entity.name.directive.happy
--     ^ punctuation.block.begin.happy
--         ^ punctuation.block.end.happy

%name parse
%tokentype { Token }
%error { parseError }

%token
    '('     { OPEN_PAREN }
    ')'     { CLOSE_PAREN }
    '+'     { PLUS }
--  ^^^ string.quoted.single.happy
--  ^ ^ punctuation.quote.single.happy
    num     { NUMBER $$ }
--                   ^^ variable.parameter.field.happy

%left '+'

-- comment {-
%%
-- <- keyword.operator.separator.happy
-- comment -}

value :: { AST }
--    ^^ keyword.operator.type.happy
      : value '+' value { Add $1 $3 }
--    ^ keyword.operator.rule.happy
--                            ^^ ^^ variable.parameter.happy
      | num             { Number $1 }
--    ^ keyword.operator.alt.happy
      | '(' value ')'   {% pure $2 }
--                      ^^ punctuation.block.monad.begin.happy
      | '(' ')'         {%% someErr }
--                      ^^^ punctuation.block.monad.begin.happy
      | ')' '('         {%^ someOtherErr }
--                      ^^^ punctuation.block.monad.begin.happy

{

data Token
    = OPEN_PAREN
    | CLOSE_PAREN
    | PLUS
    | NUMBER Int

data AST
    = Add AST AST
    | Number Int

}
