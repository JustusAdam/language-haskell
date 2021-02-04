-- SYNTAX TEST "source.haskell" "Empty quasi-quote"

instance Show NixIndexException where
  show (NixEnvFail errCode _ _) = [i||]
--                                ^ ^ keyword.operator.quasi-quotation.begin.haskell
--                                 ^ entity.name.quasi-quoter.haskell
--                                   ^^ keyword.operator.quasi-quotation.end.haskell
  show ParseNixEnvResError = "Failed to parse the output of nix-env"
-- <------------------------------------------------------------------ - meta.quasi-quotation.haskell

type S = String

-- <--------------- -meta.quasi-quotation.haskell
