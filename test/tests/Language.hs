-- SYNTAX TEST "source.haskell" "Language pragmas"

    {-# LANGUAGE DataKinds, PolyKinds, TypeFamilyDependencies #-}
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.haskell
--      ^^^^^^^^ keyword.other.preprocessor.pragma.haskell
--               ^^^^^^^^^  ^^^^^^^^^  ^^^^^^^^^^^^^^^^^^^^^^ keyword.other.preprocessor.extension.haskell
    {-# LANGUAGE NoMonomorphismRestriction #-}
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.haskell
--      ^^^^^^^^ keyword.other.preprocessor.pragma.haskell
--               ^^^^^^^^^^^^^^^^^^^^^^^^^ keyword.other.preprocessor.extension.haskell

    {-# LANGUAGE NullaryTypeClasses #-}
--               ^^^^^^^^^^^^^^^^^^ invalid

    {-# LANGUAGE NotAKnownExtension #-}
--               ^^^^^^^^^^^^^^^^^^ - keyword.other.preprocessor.extension.haskell
