-- SYNTAX TEST "source.haskell" "Intervening comments shouldn't affect highlighting"

data Foo where
{- comment line not gobbled up by the preprocessor -}
    MkFoo :: Foo
--  ^^^^^^^^^^^^ meta.declaration.type.gadt.haskell
--  ^^^^^ constant.other.haskell
--           ^^^ storage.type.haskell

dbPageWrapper :: (DashBoardPage p, Monad m) =>
{- comment line not gobbled up by the preprocessor -}
    T.Text -> p -> HtmlT m a -> HtmlT m b -> HtmlT m b
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.type-declaration.haskell
--                              ^^^^^ storage.type.haskell

type T a
{- comment line not gobbled up by the preprocessor -}
  = Int
--  ^^^ storage.type.haskell
