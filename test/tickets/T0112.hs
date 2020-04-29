-- SYNTAX TEST "source.haskell" "Case-insensitive deprecation pragmas"

module Web.Telegram.API.Lens {-# dEPrecatED "use labels from generic-lens instead" #-}
--                               ^^^^^^^^^^ meta.preprocessor.haskell keyword.other.preprocessor.haskell
--                                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.haskell string.quoted.double.haskell
  where

{-# dEPrecatED foo "use labels from generic-lens instead" #-}
--  ^^^^^^^^^^ meta.preprocessor.haskell keyword.other.preprocessor.haskell
--                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.haskell string.quoted.double.haskell
