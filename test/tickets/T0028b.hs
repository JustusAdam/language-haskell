-- SYNTAX TEST "source.haskell" "Highlighting type signature before do arrow"

someFunc :: IO ()
someFunc = do
  result <- ioAction
  result :: Int <- ioAction
--          ^^^ storage.type.haskell
--              ^^ keyword.operator.arrow.left.haskell
  ( result :: Int ) <- ioAction
--            ^^^ storage.type.haskell
--                  ^^ keyword.operator.arrow.left.haskell