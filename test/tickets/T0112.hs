-- SYNTAX TEST "source.haskell" "Case-insensitive deprecation pragmas"

module Web.Telegram.API.Lens {-# dEPrecatED "use labels from generic-lens instead" #-}
--                               ^^^^^^^^^^ keyword.other.preprocessor.pragma.haskell
--                                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.haskell
--                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.haskell
  where

{-# dEPrecatED foo "use labels from generic-lens instead" #-}
--  ^^^^^^^^^^  keyword.other.preprocessor.pragma.haskell
--                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.haskell
-- <------------------------------------------------------------- meta.preprocessor.haskell
