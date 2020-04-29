-- SYNTAX TEST "source.haskell" "Infix constructors"

myTail :: [a] -> [a]
myTail ( a `Cons` as ) = as
--          ^^^^ keyword.operator.function.infix.haskell constant.other.haskell