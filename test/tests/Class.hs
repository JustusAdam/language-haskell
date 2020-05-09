-- SYNTAX TEST "source.haskell" "Class declarations"


    class C a where
--  ^^^^^ keyword.other.class.haskell
--        ^ storage.type.haskell
--          ^ variable.other.generic-type.haskell
--            ^^^^^ keyword.other.where.haskell
      meth :: a b
--    ^^^^ entity.name.function.haskell
--            ^ ^ variable.other.generic-type.haskell
    
    
    class ( C a, D a )
--  ^^^^^ keyword.other.class.haskell
--          ^    ^ storage.type.haskell
--            ^    ^ variable.other.generic-type.haskell
{- comment -}
        => E ( A b c )
--      ^^ keyword.operator.big-arrow.haskell
--         ^   ^ storage.type.haskell
--               ^ ^ variable.other.generic-type.haskell
        where
--      ^^^^^ keyword.other.where.haskell
      method :: a b
--    ^^^^^^ entity.name.function.haskell
--              ^ ^ variable.other.generic-type.haskell
    

    class C ( a :: k ) =>
--  ^^^^^ keyword.other.class.haskell
--                     ^^ keyword.operator.big-arrow.haskell
      G
--    ^ storage.type.haskell
        (a :: k)
--       ^    ^ variable.other.generic-type.haskell
        (b :: L k)
--            ^ storage.type.haskell
--       ^      ^ variable.other.generic-type.haskell
      where
--    ^^^^^ keyword.other.where.haskell

      (<!>) :: T k -> T (L k) -> A
--     ^^^ entity.name.function.infix.haskell
--               ^         ^ variable.other.generic-type.haskell
--             ^      ^  ^       ^ storage.type.haskell


    class G a where
--  ^^^^^ keyword.other.class.haskell
--        ^ storage.type.haskell
--          ^ variable.other.generic-type.haskell
--            ^^^^^ keyword.other.where.haskell

    foo :: A
--  ^^^ meta.function.type-declaration.haskell
--  ^^^ entity.name.function.haskell
--  ^^^^^^^^ - meta.declaration.class.haskell

    class G a
--  ^^^^^ keyword.other.class.haskell
--        ^ storage.type.haskell
--          ^ variable.other.generic-type.haskell