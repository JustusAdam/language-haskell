-- SYNTAX TEST "source.haskell" "Test ending of comment-like blocks"

    {- a b -} a b
--  ^^^^^^^^^ comment.block.haskell
--            ^ ^ - comment.block.haskell

    {-$ a b -} a b
--  ^^^^^^^^^^ comment.block.documentation.haskell
--             ^ ^ - comment.block.documentation.haskell

    {-# SPECIALISE foo :: a -> b #-} c d
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.haskell
--                                   ^ ^ - meta.preprocessor.haskell

    {-@ foo :: A -> B @-} c d
--  ^^^^^^^^^^^^^^^^^^^^^ block.liquidhaskell.haskell
--             ^    ^ storage.type.haskell
--                        ^ ^ - block.liquidhaskell.haskell

    {-@ type NonEmpty a = {v:[a] | 0 < len v } @-} c d
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ block.liquidhaskell.haskell
--                         ^ - variable.other.generic-type.haskell
--                                                 ^ ^ - block.liquidhaskell.haskell
