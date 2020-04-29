-- SYNTAX TEST "source.haskell" "Comments in data constructors"

data Person = Person
  { name :: String, -- comment
--                  ^^^^^^^^^^ comment.line.double-dash.haskell
    sons :: [Person] -- comment
--                   ^^^^^^^^^^ comment.line.double-dash.haskell
  }


{- comment1 -}
-- <------------- comment.block.haskell
  {- comment 2 -}
-- <~~------------- comment.block.haskell
data A where {- comment3 -}
--           ^^^^^^^^^^^^^^ comment.block.haskell
  {- comment4 -}
-- <~~------------- comment.block.haskell
{-  comment5 -}
-- <------------- comment.block.haskell