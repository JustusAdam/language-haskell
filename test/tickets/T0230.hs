-- SYNTAX TEST "source.haskell" "Exports with magic hash"

module M
  ( T#(f#,C#,(+#),g#)
--  ^ storage.type.haskell
--     ^          ^ entity.name.function.haskell
  , Int, Bool
--  ^^^  ^^^^ storage.type.haskell

  )
  where
