-- SYNTAX TEST "source.haskell" "Deriving via (multiline)"


    deriving via VariantF ( ApplyAll (EGADT vs) vs )
--  ^^^^^^^^ keyword.other.deriving.haskell
--           ^^^ keyword.other.deriving.strategy.via.haskell
--               ^^^^^^^^   ^^^^^^^   ^^^^ storage.type.haskell
--                                          ^^  ^^ variable.other.generic-type.haskell
      instance BottomUp CodeGen ( ApplyAll (EGADT vs) vs )
--    ^^^^^^^^ keyword.other.instance.haskell
--             ^^^^^^^^ ^^^^^^^   ^^^^^^^^  ^^^^^ storage.type.haskell
--                                                ^^ variable.other.generic-type.haskell
            => CodeGen (EGADT vs)
--          ^^ keyword.operator.big-arrow.haskell
--             ^^^^^^^  ^^^^^ storage.type.haskell
--                            ^^ variable.other.generic-type.haskell

newtype StateMonad b c r = StateMonad (StateT (MyState (Something b c) b) IO r)
    deriving (MonadState (MyState (Something b c) b), MonadIO, Monad)
--  ^^^^^^^^ keyword.other.deriving.haskell
--                                           ^ ^  ^ variable.other.generic-type.haskell
--            ^^^^^^^^^^  ^^^^^^^  ^^^^^^^^^          ^^^^^^^  ^^^^^ storage.type.haskell
      via ( State ( s, t ) r )
--    ^^^ keyword.other.deriving.strategy.via.haskell
--          ^^^^^ storage.type.haskell
--                  ^  ^   ^ variable.other.generic-type.haskell
