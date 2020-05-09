-- SYNTAX TEST "source.haskell" "LiquidHaskell annotation after data declaration"

    data D = C

    {-@ f :: (Ord a) => xs:[a] -> (IncrList a) @-}
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ block.liquidhaskell.haskell
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - comment.block.haskell
    f :: [a] -> [a]