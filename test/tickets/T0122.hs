-- SYNTAX TEST "source.haskell" "Interaction between constructors and symbols"

f (A,B) = 3
-- ^ ^ constant.other.haskell
f ( A,B ) = 3
--  ^ ^ constant.other.haskell
f ( A ,B ) = 3
--  ^  ^ constant.other.haskell

g [X,Y,Z] = 0
-- ^ ^ ^ constant.other.haskell