-- SYNTAX TEST "source.haskell" "Pragma after data declaration"

    data D = C

    {-# COMPLETE P #-}
--  ^^^^^^^^^^^^^^^^^^ meta.preprocessor.haskell
--  ^^^^^^^^^^^^^^^^^^ - comment.block.haskell
    pattern P :: A
    pattern P = C