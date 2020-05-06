-- SYNTAX TEST "source.haskell" "Intervening block comments shouldn't affect highlighting"


  data A
--     ^ storage.type.haskell
{- comment line not gobbled up by the preprocessor
  over multiple lines -}
-- <~~---------------------- comment.block.haskell
    = A
--    ^ constant.other.haskell

  data B =
--     ^ storage.type.haskell
{- comment line not gobbled up by the preprocessor -}
-- <~~----------------------------------------------------- comment.block.haskell
    B
--  ^ constant.other.haskell

  newtype A =
--        ^ storage.type.haskell
{- comment line not gobbled up by the preprocessor
  over multiple lines -}
-- <~~---------------------- comment.block.haskell
    A
--  ^ constant.other.haskell

  newtype B =
--        ^ storage.type.haskell
{- comment line not gobbled up by the preprocessor -}
-- <~~----------------------------------------------------- comment.block.haskell
    B
--  ^ constant.other.haskell


  data Foo where
{- comment line not gobbled up by the preprocessor
over multiple lines  -}
-- <---------------------- comment.block.haskell
      MkFoo :: Foo
--    ^^^^^ constant.other.haskell
--             ^^^ storage.type.haskell
  
  dbPageWrapper :: (DashBoardPage p, Monad m) =>
{- comment line not gobbled up by the preprocessor
 over
 multiple
 lines   -}
-- <~----------- comment.block.haskell
      T.Text -> p -> HtmlT m a -> HtmlT m b -> HtmlT m b
--    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.type-declaration.haskell
--                                ^^^^^ storage.type.haskell
  
  type T a
        {- comment line not gobbled up by the preprocessor
over multiple
lines -}
-- <-------- comment.block.haskell
    = Int
--    ^^^ storage.type.haskell
