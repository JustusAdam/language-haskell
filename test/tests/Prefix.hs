-- SYNTAX TEST "source.haskell" "Reserved prefix operators"


    data A = A !A | B !B
--             ^      ^ keyword.operator.prefix.bang.haskell 

    f ~(x,y) = _
--    ^ keyword.operator.prefix.tilde.haskell
    f !(!x,~P(z)) = _
--    ^ ^ keyword.operator.prefix.bang.haskell
--         ^ keyword.operator.prefix.tilde.haskell

    f (a,b)!g
--         ^ - keyword.operator.prefix.bang.haskell

    vec ! 3
--      ^ - keyword.operator.prefix.bang.haskell
    vec Vector.! 3
--             ^ - keyword.operator.prefix.bang.haskell
    a ~ b
--    ^ - keyword.operator.prefix.tilde.haskell

   -1
-- ^ keyword.operator.prefix.minus.haskell
   1 - 2
--   ^ - keyword.operator.prefix.minus.haskell
--   ^ keyword.operator.infix.haskell
