-- SYNTAX TEST "source.haskell" "Multiline GADT declaration"

    data G (a :: A) b (c :: C) :: Type
--  ^^^^ keyword.other.data.haskell
--          ^          ^ variable.other.generic-type.haskell
--            ^^         ^^    ^^ keyword.operator.double-colon.haskell
--       ^       ^          ^     ^^^^ storage.type.haskell
      where
--    ^^^^^^ keyword.other.where.haskell
      A :: G a b c
--    ^ constant.other.haskell
--      ^^ keyword.operator.double-colon.haskell
--         ^ storage.type.haskell
--           ^ ^ ^ variable.other.generic-type.haskell
      (:&) :: G A B c
--     ^^ constant.other.operator.haskell
--         ^^ keyword.operator.double-colon.haskell
--            ^ ^ ^ storage.type.haskell
--                  ^ variable.other.generic-type.haskell
      (:!!!!!!!!!!!!!!!!!!!!!!!!)
--     ^^^^^^^^^^^^^^^^^^^^^^^^^ constant.other.operator.haskell
        :: a -> b -> G a b c
--      ^^ keyword.operator.double-colon.haskell
--                   ^ storage.type.haskell
--         ^    ^      ^ ^ ^ variable.other.generic-type.haskell