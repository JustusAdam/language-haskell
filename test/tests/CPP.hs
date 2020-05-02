-- SYNTAX TEST "source.haskell" "C preprocessor instructions"

module M
  ( A
  , a
#ifdef XYZ
-- <----- meta.preprocessor.c
  , bcd
  , X
#endif
-- <----- meta.preprocessor.c
  )
  where

#if MIN_VERSION_BASE(4,12,0)
-- <-- meta.preprocessor.c
foo :: A
foo = A
#endif
-- <----- meta.preprocessor.c