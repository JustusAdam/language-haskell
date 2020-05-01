-- SYNTAX TEST "source.haskell" "Comments in module exports"

module Module
-- <------ meta.declaration.module.haskell
  (
    -- * main func  <- disable highlighting
--     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-dash.haskell
    foo
--  ^^^ meta.declaration.exports.haskell entity.name.function.haskell
    {- disable, too
--     ^^^^^^^^^^^^ comment.block.haskell
    -}
  , bar, bar
--  ^^^ meta.declaration.exports.haskell entity.name.function.haskell
--       ^^^ meta.declaration.exports.haskell entity.name.function.haskell
  ) {- comm -} where
--     ^^^^  comment.block.haskell
--             ^^^^^ keyword.other.where.haskell
