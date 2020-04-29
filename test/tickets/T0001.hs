-- SYNTAX TEST "source.haskell" "Multiline type signature"

dbPageWrapper :: (DashBoardPage p, Monad m) =>
    T.Text -> p -> HtmlT m a -> HtmlT m b -> HtmlT m b
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.type-declaration.haskell
--                              ^^^^^ storage.type.haskell

