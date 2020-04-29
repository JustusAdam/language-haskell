-- SYNTAX TEST "source.haskell" "Deriving via and deriving strategies"

deriving via (A b c) instance C a
-- <------- keyword.other.deriving.haskell
--       ^^^ keyword.other.haskell
--                   ^^^^^^^^ keyword.other.instance.haskell
deriving via Integer instance C a
-- <------- keyword.other.deriving.haskell
--       ^^^ keyword.other.haskell
--                   ^^^^^^^^ keyword.other.instance.haskell


data B = B
    deriving A via B
--  ^^^^^^^^ keyword.other.deriving.haskell
--             ^^^ keyword.other.deriving.haskell
--           ^     ^ storage.type.haskell
    deriving stock    Generic
--  ^^^^^^^^ keyword.other.deriving.haskell
--           ^^^^^ keyword.other.deriving.haskell
--                    ^^^^^^^ storage.type.haskell
    deriving anyclass NFData
--  ^^^^^^^^ keyword.other.deriving.haskell
--           ^^^^^^^^ keyword.other.deriving.haskell
--                    ^^^^^^ storage.type.haskell

newtype N a = MkN a
deriving   stock instance Show ( N Int )
-- <------- keyword.other.deriving.haskell
--         ^^^^^ keyword.other.deriving.haskell
--               ^^^^^^^^ keyword.other.instance.haskell
--                        ^^^^ storage.type.haskell
deriving newtype instance Eq   ( N Int )
-- <------- keyword.other.deriving.haskell
--       ^^^^^^^ keyword.other.deriving.haskell
--               ^^^^^^^^ keyword.other.instance.haskell
--                        ^^ storage.type.haskell

newtype StateMonad b c r = StateMonad (StateT (MyState (Something b c) b) IO r)
    deriving (MonadState (MyState (Something b c) b), MonadIO, Monad)
--  ^^^^^^^^ keyword.other.deriving.haskell
--            ^^^^^^^^^^                              ^^^^^^^  ^^^^^ storage.type.haskell
--                                           ^ ^  ^ variable.other.generic-type.haskell
