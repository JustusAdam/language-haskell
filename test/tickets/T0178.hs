-- SYNTAX TEST "source.haskell" "Multiline type signature in brackets"

proof ::  SomeVeryLongExpression  a b
      :~: SomeOtherLongExpression c d
--    ^^^ 	storage.type.operator.infix.haskell
--        ^^^^^^^^^^^^^^^^^^^^^^^ storage.type.haskell
--                                ^ ^	variable.other.generic-type.haskell

quux ( proof ::  SomeVeryLongExpression  a b
             :~: SomeOtherLongExpression c d
--           ^^^ 	storage.type.operator.infix.haskell
--               ^^^^^^^^^^^^^^^^^^^^^^^ 	storage.type.haskell
--                                       ^ ^	variable.other.generic-type.haskell
     )
 
quux [ x :: a
              B c ]
--            ^ storage.type.haskell
--              ^ variable.other.generic-type.haskell
