-- SYNTAX TEST "source.haskell.happy" "Happy"

foo :: { Foo }
    : foo { $1 }
--          ^^ variable.parameter.happy     


fooBar :: { (Foo, Bar) }
       : foo bar { ($1, $2) }
--                  ^^  ^^ variable.parameter.happy
