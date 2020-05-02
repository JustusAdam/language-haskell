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
  -> b --^ notDoc
--     ^^^^^^^^^^^ - comment.block.documentation.haskell
  -> c



    -- | docs
--     ^^^^^^ - comment.block.documentation.haskell
    -- $ docs
--     ^^^^^^ - comment.block.documentation.haskell
    -- ^ docs
--     ^^^^^^ - comment.block.documentation.haskell
    -- * docs
--     ^^^^^^ - comment.block.documentation.haskell
    a --| notDocs
--  ^^^^^^^^^^^^^ - comment.block.documentation.haskell
    a --$ notDocs
--  ^^^^^^^^^^^^^ - comment.block.documentation.haskell
    a --^ notDocs
--  ^^^^^^^^^^^^^ - comment.block.documentation.haskell
    a --* notDocs
--  ^^^^^^^^^^^^^ - comment.block.documentation.haskell
    --  | notDocs
--      ^^^^^^^^^ - comment.block.documentation.haskell
    --  $ notDocs
--      ^^^^^^^^^ - comment.block.documentation.haskell
    --  ^ notDocs
--      ^^^^^^^^^ - comment.block.documentation.haskell
    --  * notDocs
--      ^^^^^^^^^ - comment.block.documentation.haskell
    {-| docs -}
--  ^^^^^^^^^^^ comment.block.documentation.haskell
    {-$ docs -}
--  ^^^^^^^^^^^ comment.block.documentation.haskell
    {-^ docs -}
--  ^^^^^^^^^^^ comment.block.documentation.haskell
    {-* docs -}
--  ^^^^^^^^^^^ comment.block.documentation.haskell
    {- | docs -}
--  ^^^^^^^^^^^^ comment.block.documentation.haskell
    {- $ docs -}
--  ^^^^^^^^^^^^ comment.block.documentation.haskell
    {- ^ docs -}
--  ^^^^^^^^^^^^ comment.block.documentation.haskell
    {- * docs -}
--  ^^^^^^^^^^^^ comment.block.documentation.haskell
