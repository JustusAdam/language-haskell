-- SYNTAX TEST "source.haskell" "LiquidHaskell annotation after data declaration"

    data D = C

    {-@ f :: (Ord a) => xs:[a] -> (IncrList a) @-}
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ block.liquidhaskell.haskell
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - comment.block.haskell
--                                             ^^^ - storage.type.operator.infix.haskell
    f :: [a] -> [a]