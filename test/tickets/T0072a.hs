-- SYNTAX TEST "source.haskell" "Pattern synonyms"

module Main 
    ( pattern P ) where
--    ^^^^^^^ meta.declaration.exports.haskell keyword.other.pattern.haskell
--            ^ constant.other.haskell

import M ( pattern Q )
--         ^^^^^^^ meta.declaration.exports.haskell keyword.other.pattern.haskell
--                 ^ constant.other.haskell


pattern A :: T
-- <------- keyword.other.pattern.haskell
--      ^ constant.other.haskell
--           ^ storage.type.haskell
pattern (A b) = C
-- <------- keyword.other.pattern.haskell
--       ^      ^ constant.other.haskell

pattern B :: A -> B
-- <------- keyword.other.pattern.haskell
--      ^ constant.other.haskell
--           ^    ^ storage.type.haskell
          -> C
--           ^ storage.type.haskell

pattern A, B :: T
-- <------- keyword.other.pattern.haskell
--      ^  ^ constant.other.haskell
--              ^ storage.type.haskell
