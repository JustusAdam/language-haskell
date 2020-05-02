-- SYNTAX TEST "source.haskell" "Tuple constructors"

f = (,)
--  ^^^ support.constant.tuple.haskell 
f = (, )
--  ^^^ support.constant.tuple.haskell 
f = ( ,)
--  ^^^^ support.constant.tuple.haskell 
f = ( , , )
--  ^^^^^^^ support.constant.tuple.haskell 
f = (, , ,,,)
--  ^^^^^^^^^ support.constant.tuple.haskell 
