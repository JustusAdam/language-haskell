-- SYNTAX TEST "source.haskell" "Haddock documentation"

  -- | Doc
--     ^^^ comment.block.documentation.haskell

{-| doc
--  ^^^ comment.block.documentation.haskell
    doc
--  ^^^ comment.block.documentation.haskell
    doc -}
--  ^^^ comment.block.documentation.haskell

    {- | also doc -}
--  ^^^^^^^^^^^^^^^^ comment.block.documentation.haskell
 
    -- | docs
--     ^^^^^^ comment.block.documentation.haskell
    -- $ docs
--     ^^^^^^ comment.block.documentation.haskell
    -- ^ docs
--     ^^^^^^ comment.block.documentation.haskell
    -- * docs
--     ^^^^^^ comment.block.documentation.haskell
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

        -- | docs
--      ^^^^^^^^^ comment.block.documentation.haskell
        -- continuing docs
--      ^^^^^^^^^^^^^^^^^^ comment.block.documentation.haskell
        -- still docs
--      ^^^^^^^^^^^^^ comment.block.documentation.haskell
    -- no longer docs
--     ^^^^^^^^^^^^^^ - comment.block.documentation.haskell

g :: a -- ^ doc
--          ^^^ comment.line.documentation.haskell
  -> b --^ notDoc
--     ^^^^^^^^^^^ - comment.line.documentation.haskell comment.block.documentation.haskell 
  -> c
