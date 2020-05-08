-- SYNTAX TEST "source.haskell" "Special record syntax"

  data Rec = Rec { a, b :: AB a b, c :: C, (:+) :: (:-) }
--           ^^^ constant.other.haskell
--                         ^^           ^ storage.type.haskell
--                            ^ ^ variable.other.generic-type.haskell
--                 ^  ^            ^        ^^ variable.other.member.definition.haskell
--                                                  ^^ storage.type.operator.haskell

  f :: Rec -> T
  f record@( Rec { a = A, b = b, (:+) = (:-), c, .. } )
--           ^^^ constant.other.haskell
--        ^ keyword.operator.infix.tight.at.haskell
--                            ^          ^^ - variable.other.member.haskell
--                 ^      ^       ^^          ^ variable.other.member.haskell
--                                               ^^ variable.other.member.wildcard.haskell
--               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.record.haskell

  f :: Rec -> Rec
  f x = x { a = A, b = b, (:+) = (:-), c, .. }
--                     ^          ^^ - variable.other.member.haskell
--          ^      ^       ^^          ^ variable.other.member.haskell
--                                        ^^ variable.other.member.wildcard.haskell
--        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.record.haskell

  f val@( pattern )
--     ^ keyword.operator.infix.tight.at.haskell
  f (+)@(g)
--     ^ keyword.operator.infix.tight.at.haskell

  f@@g
-- ^^ -keyword.operator.infix.tight.at.haskell

  f (+)@@(g)
--     ^^ -keyword.operator.infix.tight.at.haskell

  f a@+b
--   ^ -keyword.operator.infix.tight.at.haskell
