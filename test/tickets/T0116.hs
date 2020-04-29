-- SYNTAX TEST "source.haskell" "Nested comments"

    -- comment
--  ^^^^^^^^^^ comment.line.double-dash.haskell
    
    -- comment -- comment
--  ^^^^^^^^^^^^^^^^^^^^^ comment.line.double-dash.haskell
    
    {- comments
--  ^^^^^^^^^^^ comment.block.haskell
    
      {- nested comment -}
--    ^^^^^^^^^^^^^^^^^^^^ comment.block.haskell
  
      more comment
--    ^^^^^^^^^^^^^ comment.block.haskell
    
      -- comment
--    ^^^^^^^^^^ comment.block.haskell
    
    -}
  
    notAComment :: Int
--  ^^^^^^^^^^^^^^^^^^ - comment.line.double-dash.haskell comment.block.haskell

    -- comment {- comment -}
--  ^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-dash.haskell

    
    {- comment
--  ^^^^^^^^^^ comment.block.haskell
    
     {-# PRAGMA #-}
--   ^^^^^^^^^^^^^^ comment.block.haskell
    
    -}
--  ^^ comment.block.haskell
  
    foo :: Bar
--  ^^^^^^^^^^ - comment.line.double-dash.haskell comment.block.haskell
