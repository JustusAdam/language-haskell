-- SYNTAX TEST "source.haskell" "Pattern synonyms"

module Main 
    ( pattern P ) where
--    ^^^^^^^ meta.declaration.exports.haskell keyword.other.pattern.haskell
--            ^ constant.other.haskell

import M ( pattern Q )
--         ^^^^^^^ meta.declaration.exports.haskell keyword.other.pattern.haskell
--                 ^ constant.other.haskell


pattern A :: Type
-- <------- keyword.other.pattern.haskell
--      ^ constant.other.haskell
pattern (A b) = c
-- <------- keyword.other.pattern.haskell
--       ^ constant.other.haskell

pattern B :: A -> B
-- <------- keyword.other.pattern.haskell
--      ^ constant.other.haskell
--           ^    ^ storage.type.haskell
          -> C
--           ^ storage.type.haskell

pattern A, B :: Type
-- <------- keyword.other.pattern.haskell
--      ^  ^ constant.other.haskell
