-- SYNTAX TEST "source.haskell" "Deriving strategies (same line)"

newtype B = B deriving A via B
--            ^^^^^^^^ keyword.other.deriving.haskell
--                       ^^^ keyword.other.deriving.strategy.via.haskell
--                     ^     ^ storage.type.haskell
data B = B deriving stock    ( Eq, Generic )
--         ^^^^^^^^ keyword.other.deriving.haskell
--                  ^^^^^ keyword.other.deriving.strategy.stock.haskell
--                             ^^  ^^^^^^^ storage.type.haskell
data B = B deriving anyclass NFData
--         ^^^^^^^^ keyword.other.deriving.haskell
--                  ^^^^^^^^ keyword.other.deriving.strategy.anyclass.haskell
--                           ^^^^^^ storage.type.haskell
