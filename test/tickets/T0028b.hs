-- SYNTAX TEST "source.haskell" "Highlighting type signature before do arrow"

someFunc :: IO ()
someFunc = do
  result <- ioAction
  result :: Int <- ioAction
-- <~~------ meta.function.type-declaration.haskell
--          ^^^ storage.type.haskell
  ( result :: Int ) <- ioAction
--            ^^^ storage.type.haskell
--  ^^^^^^ meta.function.type-declaration.haskell
