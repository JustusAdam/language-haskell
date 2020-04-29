-- SYNTAX TEST "source.haskell" "Standalone deriving statements"

    deriving instance SomeClass => Eq a
--  ^^^^^^^^ keyword.other.deriving.haskell
--           ^^^^^^^^ keyword.other.instance.haskell
--                    ^^^^^^^^^ storage.type.haskell
    deriving instance Ord a => Ord (Expr a)
--  ^^^^^^^^ keyword.other.deriving.haskell
--           ^^^^^^^^ keyword.other.instance.haskell
--                                  ^^^^ storage.type.haskell

    normal :: Int
--  ^^^^^^ entity.name.function.haskell
--  ^^^^^^^^^^^^^^ meta.function.type-declaration.haskell 

deriving instance SomeClass => Eq a
-- <-------- keyword.other.deriving.haskell
--       ^^^^^^^^ keyword.other.instance.haskell
--                ^^^^^^^^^ storage.type.haskell
deriving instance Ord a => Ord (Expr a)
-- <-------- keyword.other.deriving.haskell
--       ^^^^^^^^ keyword.other.instance.haskell
--                              ^^^^ storage.type.haskell
