-- SYNTAX TEST "source.haskell" "SPECIALISE in pragma"

foo = {-# SCC "specialise" #-} 3
--                         ^^^^^ - string.quoted.double.haskell
--                             ^ - meta.preprocessor.haskell

bar = {-# SCC "  specialise  " #-} 3
--                             ^^^^^ - string.quoted.double.haskell
--                                 ^ - meta.preprocessor.haskell
