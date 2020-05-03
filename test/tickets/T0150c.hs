-- SYNTAX TEST "source.haskell" "Haddock comments after data declaration"

    data D = C

    {-| docs docs -}
--  ^^^^^^^^^^^^^^^^ comment.block.documentation.haskell
--  ^^^^^^^^^^^^^^^^ - comment.block.haskell

    data D = C

    -- | docs docs
--  ^^^^^^^^^^^^^^ comment.block.documentation.haskell
--  ^^^^^^^^^^^^^^ - comment.line.double-dash.haskell