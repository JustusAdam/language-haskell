{

module Alex where

import Foo as Bar
import Baz (bax)

}

%wrapper "basic"

$digit = 0-9
$alpha = [a-zA-Z]

tokens :-
    $white+         ;
    $digit+         { Number }
    $alpha+         { Ident }

{

data Token
    = Number
    | Ident

main = undefined

}
