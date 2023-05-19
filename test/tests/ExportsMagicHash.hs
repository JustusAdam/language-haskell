-- SYNTAX TEST "source.haskell" "Exports with magic hash"

module M
  ( T#(f#,C#,g#)
--  ^     ^ storage.type.haskell
--     ^     ^ entity.name.function.haskell
  , pattern P#
--  ^^^^^^^ keyword.other.pattern.haskell
--          ^ constant.other.haskell
  , f#, (+#), T#
--  ^ entity.name.function.haskell
--            ^ storage.type.haskell
  , type T#
--  ^^^^ keyword.other.type.haskell
--       ^ storage.type.haskell
  , type (-#)
--  ^^^^ keyword.other.type.haskell
--        ^^ storage.type.operator.haskell
  )
  where
