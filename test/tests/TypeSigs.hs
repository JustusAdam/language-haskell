-- SYNTAX TEST "source.haskell" "Type signatures in various positions"

f :: ( x :: Int ) -> Int
-- <~~-- ^^ keyword.operator.double-colon.haskell
--                ^^ keyword.operator.arrow.haskell
--          ^^^      ^^^ storage.type.haskell
f x = do
--  ^ keyword.operator.eq.haskell
  let x :: Int
--      ^^ keyword.operator.double-colon.haskell
--         ^^^ storage.type.haskell
      x = A
--      ^ keyword.operator.eq.haskell
--        ^ constant.other.haskell
  let
    y :: Int
--    ^^ keyword.operator.double-colon.haskell
--       ^^^ storage.type.haskell
    y = A
--    ^ keyword.operator.eq.haskell
--      ^ constant.other.haskell
    z :: Int = A
--    ^^ keyword.operator.double-colon.haskell
--       ^^^ storage.type.haskell
--           ^ keyword.operator.eq.haskell
--             ^ constant.other.haskell
    z :: Int == A
--    ^^ keyword.operator.double-colon.haskell
--       ^^^ storage.type.haskell
--           ^^ storage.type.operator.infix.haskell
--           ^^ - keyword.operator.eq.haskell
--              ^ storage.type.haskell
    ( w :: Int ) = A
--      ^^ keyword.operator.double-colon.haskell
--         ^^^ storage.type.haskell
--               ^ keyword.operator.eq.haskell
--                 ^ constant.other.haskell
  x :: Int <- A
--  ^^ keyword.operator.double-colon.haskell
--     ^^^ storage.type.haskell
--         ^^ keyword.operator.arrow.left.haskell
--            ^ constant.other.haskell
  x :: Int <-- A
--  ^^ keyword.operator.double-colon.haskell
--         ^^^ storage.type.operator.infix.haskell
--         ^^^ - keyword.operator.arrow.left.haskell
--     ^^^     ^ storage.type.haskell
--            
  ( x :: Int ) <- A
--    ^^ keyword.operator.double-colon.haskell
--       ^^^ storage.type.haskell
--             ^^ keyword.operator.arrow.left.haskell
--                ^ constant.other.haskell
  case x :: Int of
--       ^^ keyword.operator.double-colon.haskell
--          ^^^ storage.type.haskell
    ( 2 :: Int ) -> A
--      ^^ keyword.operator.double-colon.haskell
--         ^^^ storage.type.haskell
--               ^^ keyword.operator.arrow.haskell
--                  ^ constant.other.haskell
  where x :: Int
--        ^^ keyword.operator.double-colon.haskell
--           ^^^ storage.type.haskell
        x = A
--        ^ keyword.operator.eq.haskell
--          ^ constant.other.haskell
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
