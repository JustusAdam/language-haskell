{

module Happy where

import Foo as Bar
import Baz (bax)

}

%monad { P }

%name parse
%tokentype { Token }
%error { parseError }

%token
    '+'     { PLUS }
    num     { NUMBER $$ }

%left '+'

%%

value :: { AST }
      : value '+' value { Add $1 $3 }
      | num             { Number $1 }

{

data Token
    = PLUS
    | NUMBER Int

data AST
    = Add AST AST
    | Number Int

}
