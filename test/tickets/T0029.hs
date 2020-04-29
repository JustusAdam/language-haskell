-- SYNTAX TEST "source.haskell" "rec keyword"

f = do
  rec a <- go a
-- <~~--- keyword.other.haskell
  return a