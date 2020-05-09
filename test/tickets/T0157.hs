-- SYNTAX TEST "source.haskell" "Specialise pragma"

    {-# SPECIALIZE [0] hammeredLookup :: [(Widget, value)] -> Widget -> value #-} hammeredLookup
--      ^^^^^^^^^^ keyword.other.preprocessor.pragma.specialise.haskell
--                     ^^^^^^^^^^^^^^ entity.name.function.haskell
--                                         ^^^^^^             ^^^^^^ storage.type.haskell
--                                                 ^^^^^^               ^^^^^ variable.other.generic-type.haskell
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.haskell
--                                                                                ^^^^^^^^^^^^^^ - meta.preprocessor.haskell

    
    {-# SPECIALISE INLINE (!:) :: Arr (a, b) -> Int -> (a, b) #-}
--      ^^^^^^^^^^ keyword.other.preprocessor.pragma.specialise.haskell
--                     ^^^^^^^^^^^^^^ entity.name.function.haskell
--                                         ^^^^^^             ^^^^^^ storage.type.haskell
--                                                 ^^^^^^               ^^^^^ variable.other.generic-type.haskell
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.haskell

    {-# SPECIALIZE INLINE [~2] (!:) :: Arr (a, b) -> Int -> (a, b) #-}
--      ^^^^^^^^^^ keyword.other.preprocessor.pragma.specialise.haskell
--                 ^^^^^^ keyword.other.preprocessor.pragma.inline
--                              ^^ entity.name.function.infix.haskell
--                                     ^^^           ^^^ storage.type.haskell
--                                          ^  ^             ^  ^ variable.other.generic-type.haskell
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.haskell
    
    instance (Eq a) => Eq (Foo a) where {
       {-# SPECIALISE [1] instance Eq (Foo [(Int, Bar)]) #-}
--         ^^^^^^^^^^ keyword.other.preprocessor.pragma.specialise.haskell
--                        ^^^^^^^^ keyword.other.instance.haskell
--                                 ^^  ^^^   ^^^  ^^^ storage.type.haskell
--     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.haskell
     }

