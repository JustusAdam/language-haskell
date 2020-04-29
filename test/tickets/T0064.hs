-- SYNTAX TEST "source.haskell" "Comments in module exports"

module M
    -- ( f
--       ^ comment.line.double-dash.haskell
    -- where
--     ^^^^^ comment.line.double-dash.haskell
    where
--  ^^^^^ meta.declaration.module.haskell keyword.other.where.haskell


module M
    ( f
--    ^ meta.declaration.exports.haskell entity.name.function.haskell
    -- g
--     ^ comment.line.double-dash.haskell
    ) where
--    ^^^^^ meta.declaration.module.haskell keyword.other.where.haskell
