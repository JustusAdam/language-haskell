-- SYNTAX TEST "source.haskell" "Correct support for 'signature'"

signature M where
-- <--------- keyword.other.signature.haskell

  f = do
      let signature = Some value
  --      ^^^^^^^^^ - keyword.other.signature.haskell
      return 0
    where
      signature = more testing
  --  ^^^^^^^^^ - keyword.other.signature.haskell