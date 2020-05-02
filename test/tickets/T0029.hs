-- SYNTAX TEST "source.haskell" "rec keyword"

f = do
  rec a <- go a
-- <~~--- keyword.control.haskell
  return a