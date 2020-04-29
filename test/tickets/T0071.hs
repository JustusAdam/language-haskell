-- SYNTAX TEST "source.haskell" "Ticks in type constructors"

type family Ticked' x y = r where
    Ticked' '(a,b) = '(b,c)
--        ^^^ - string.quoted.single.haskell
