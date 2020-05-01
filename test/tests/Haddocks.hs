-- SYNTAX TEST "source.haskell" "Haddock documentation"

  -- | Doc
--     ^^^ comment.block.documentation.haskell

{-| doc
--  ^^^ comment.block.documentation.haskell
    doc
--  ^^^ comment.block.documentation.haskell
    doc -}
--  ^^^ comment.block.documentation.haskell


g :: a -- ^ doc
--          ^^^ comment.block.documentation.haskell
  -> b -- ^ doc
--          ^^^ comment.block.documentation.haskell
  -> c
