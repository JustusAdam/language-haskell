-- SYNTAX TEST "source.haskell" "Deriving strategies (different lines)"

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

newtype StateMonad b c r = StateMonad (StateT (MyState (Something b c) b) IO r)
    deriving (MonadState (MyState (Something b c) b), MonadIO, Monad)
--  ^^^^^^^^ keyword.other.deriving.haskell
      via ( State ( s, t ) r )
--    ^^^ keyword.other.via.haskell
--          ^^^^^ storage.type.haskell
--                  ^  ^   ^ variable.other.generic-type.haskell
