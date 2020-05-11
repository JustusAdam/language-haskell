-- SYNTAX TEST "source.haskell" "Specialise pragma"

    {-# SPECIALISE INLINE [~2] foo :: B -> A #-}
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.haskell
--      ^^^^^^^^^^ ^^^^^^ keyword.other.preprocessor.pragma.haskell
--                        ^^^^ meta.inlining-phase.haskell
--                                    ^    ^ storage.type.haskell


    instance (Eq a) => Eq (Foo a) where {
       {-# SPECIALIZE [1] instance Eq (Foo [(Int, Bar)]) #-}
--     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.haskell
--         ^^^^^^^^^^ keyword.other.preprocessor.pragma.haskell
--                        ^^^^^^^^ keyword.other.instance.haskell
--                                 ^^  ^^^   ^^^  ^^^ storage.type.haskell
     }