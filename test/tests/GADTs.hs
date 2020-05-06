-- SYNTAX TEST "source.haskell" "GADTs"

    data G :: a -> (b :: B) -> c -> Type where
--  ^^^^ keyword.other.data.haskell
--         ^^         ^^ keyword.operator.double-colon.haskell
--            ^     ^          ^ variable.other.generic-type.haskell
--              ^^          ^^   ^^ keyword.operator.arrow.haskell
--       ^               ^          ^^^^ storage.type.haskell
--                                       ^^^^^^ keyword.other.where.haskell
      A :: G A b c
--    ^ constant.other.haskell
--      ^^ keyword.operator.double-colon.haskell
--         ^ ^ storage.type.haskell
--             ^ ^ variable.other.generic-type.haskell
      B :: a -> b -> G a B C
--    ^ constant.other.haskell
--      ^^ keyword.operator.double-colon.haskell
--         ^    ^      ^ variable.other.generic-type.haskell
--                   ^   ^ ^ storage.type.haskell

      (:&) :: G A B C
--     ^^ constant.other.operator.haskell
--         ^^ keyword.operator.double-colon.haskell
--            ^ ^ ^ ^ storage.type.haskell


    data (a :: A) `G` (c :: C) :: Type where
--  ^^^^ keyword.other.data.haskell
--        ^            ^ variable.other.generic-type.haskell
--                 ^ storage.type.infix.haskell
--          ^^           ^^    ^^ keyword.operator.double-colon.haskell
--             ^            ^     ^^^^ storage.type.haskell
--                                     ^^^^^^ keyword.other.where.haskell

    data (:&) a b where
--  ^^^^ keyword.other.data.haskell
--        ^^ storage.type.operator.haskell
--            ^ ^ variable.other.generic-type.haskell
--                ^^^^^^ keyword.other.where.haskell
    
    data (:&) :: a -> b -> Type where
--  ^^^^ keyword.other.data.haskell
--        ^^ storage.type.operator.haskell
--            ^^ keyword.operator.double-colon.haskell
--               ^    ^ variable.other.generic-type.haskell
--                 ^^   ^^ keyword.operator.arrow.haskell
--                         ^^^^ storage.type.haskell
--                              ^^^^^^ keyword.other.where.haskell


    data (a :: A) :& (b :: B) :: Type where
--  ^^^^ keyword.other.data.haskell
--                ^^ storage.type.operator.infix.haskell
--        ^           ^ variable.other.generic-type.haskell
--          ^^          ^^    ^^ keyword.operator.double-colon.haskell
--             ^           ^     ^^^^ storage.type.haskell
--                                    ^^^^^^ keyword.other.where.haskell

    data a :& b where
--  ^^^^ keyword.other.data.haskell
--         ^^ storage.type.operator.infix.haskell
--       ^    ^ variable.other.generic-type.haskell
--              ^^^^^^ keyword.other.where.haskell
