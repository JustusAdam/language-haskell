-- SYNTAX TEST "source.haskell" "Highlighting do arrow after type signature"

someFunc :: IO ()
someFunc = do
  result <- ioAction
  result :: Int <- ioAction
--              ^^ keyword.operator.arrow.left.haskell
  ( result :: Int ) <- ioAction
--                  ^^ keyword.operator.arrow.left.haskell
