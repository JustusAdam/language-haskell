-- SYNTAX TEST "source.haskell" "Deriving via (multiline)"

newtype StateMonad b c r = StateMonad (StateT (MyState (Something b c) b) IO r)
    deriving (MonadState (MyState (Something b c) b), MonadIO, Monad)
--  ^^^^^^^^ keyword.other.deriving.haskell
      via ( State ( s, t ) r )
--    ^^^ keyword.other.via.haskell
--          ^^^^^ storage.type.haskell
--                  ^  ^   ^ variable.other.generic-type.haskell
