-- SYNTAX TEST "source.haskell" "Pattern synonyms"

module Main 
    ( pattern P ) where
--    ^^^^^^^ meta.declaration.exports.haskell keyword.other.haskell
--            ^ constant.other.haskell

import M ( pattern Q )
--         ^^^^^^^ meta.declaration.exports.haskell keyword.other.haskell
--                 ^ constant.other.haskell


pattern A :: Type
-- <------- keyword.other.haskell
--      ^ constant.other.haskell
pattern (A b) = c
-- <------- keyword.other.haskell
--       ^ constant.other.haskell

pattern B :: A -> B
-- <------- keyword.other.haskell
--      ^ constant.other.haskell
--           ^    ^ storage.type.haskell
          -> C
--           ^ storage.type.haskell

pattern A, B :: Type
-- <------- keyword.other.haskell
--      ^  ^ constant.other.haskell
