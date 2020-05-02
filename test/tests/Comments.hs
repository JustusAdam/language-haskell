-- SYNTAX TEST "source.haskell" "Intervening comments shouldn't affect highlighting"


  data A
--     ^ storage.type.haskell
  -- comment line not gobbled up by the preprocessor
-- <~~-------------------------------------------------- comment.line.double-dash.haskell
    = A
--    ^ constant.other.haskell

  newtype B =
--        ^ storage.type.haskell
  -- comment line not gobbled up by the preprocessor
-- <~~-------------------------------------------------- comment.line.double-dash.haskell
    B
--  ^ constant.other.haskell

  data Foo where
  -- comment line not gobbled up by the preprocessor
-- <~~-------------------------------------------------- comment.line.double-dash.haskell
      MkFoo :: Foo
--    ^^^^^^^^^^^^ meta.declaration.type.gadt.haskell
--    ^^^^^ constant.other.haskell
--             ^^^ storage.type.haskell
  
  dbPageWrapper :: (DashBoardPage p, Monad m) =>
  -- comment line not gobbled up by the preprocessor
-- <~~-------------------------------------------------- comment.line.double-dash.haskell
      T.Text -> p -> HtmlT m a -> HtmlT m b -> HtmlT m b
--    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.type-declaration.haskell
--                                ^^^^^ storage.type.haskell
  
  type T a
  -- comment line not gobbled up by the preprocessor
-- <~~-------------------------------------------------- comment.line.double-dash.haskell
    = Int
--    ^^^ storage.type.haskell
