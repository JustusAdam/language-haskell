-- SYNTAX TEST "source.haskell" "Test ending of comment-like blocks"

    {- a b -} a b
--  ^^^^^^^^^ comment.block.haskell
--            ^ ^ - comment.block.haskell

    {-$ a b -} a b
--  ^^^^^^^^^^ comment.block.documentation
--             ^ ^ - comment.block.documentation

    {-# SPECIALISE foo :: a -> b #-} c d
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.haskell
--                                   ^ ^ - meta.preprocessor.haskell

    {-@ foo :: A -> B @-} c d
--  ^^^^^^^^^^^^^^^^^^^^^ block.liquidhaskell.haskell
--                        ^ ^ - block.liquidhaskell.haskell
