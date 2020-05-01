-- SYNTAX TEST "source.haskell" "Type signatures in various positions"

f :: ( x :: Int ) -> Int
-- <~~-- ^^ keyword.operator.double-colon.haskell
--          ^^^      ^^^ storage.type.haskell
f x = do
--  ^ keyword.operator.eq.haskell
  let x :: Int
--      ^^ keyword.operator.double-colon.haskell
--         ^^^ storage.type.haskell
      x = 3
--      ^ keyword.operator.eq.haskell
  let
    y :: Int
--    ^^ keyword.operator.double-colon.haskell
--       ^^^ storage.type.haskell
    y = 3
--    ^ keyword.operator.eq.haskell
    z :: Int = 3
--    ^^ keyword.operator.double-colon.haskell
--       ^^^ storage.type.haskell
    ( w :: Int ) = 4
--      ^^ keyword.operator.double-colon.haskell
--         ^^^ storage.type.haskell
--               ^ keyword.operator.eq.haskell
  x :: Int <- 3
--  ^^ keyword.operator.double-colon.haskell
--     ^^^ storage.type.haskell
--         ^^ keyword.operator.haskell
  ( x :: Int ) <- 4
--    ^^ keyword.operator.double-colon.haskell
--       ^^^ storage.type.haskell
--             ^^ keyword.operator.haskell
  case x :: Int of
--       ^^ keyword.operator.double-colon.haskell
--          ^^^ storage.type.haskell
    ( 2 :: Int ) -> 3
--      ^^ keyword.operator.double-colon.haskell
--         ^^^ storage.type.haskell
--               ^^ keyword.operator.haskell
  where x :: Int
--        ^^ keyword.operator.double-colon.haskell
--           ^^^ storage.type.haskell
        x = 3
--        ^ keyword.operator.eq.haskell
  where
    y :: Int
--    ^^ keyword.operator.double-colon.haskell
--       ^^^ storage.type.haskell
    y = 3
--    ^ keyword.operator.eq.haskell

type T ( x :: Int ) :: ( k :: D x )
--         ^^       ^^     ^^ keyword.operator.double-colon.haskell
--   ^        ^^^             ^ storage.type.haskell
--       ^               ^      ^ variable.other.generic-type.haskell
type T x = X :: D x
--           ^^ keyword.operator.double-colon.haskell
--   ^     ^    ^ storage.type.haskell
--     ^          ^ variable.other.generic-type.haskell
