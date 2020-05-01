-- SYNTAX TEST "source.haskell" "Multi-line type signatures"

f :: A
--   ^ storage.type.haskell
  -> B
--   ^ storage.type.haskell
  -> C
--   ^ storage.type.haskell

f 
  :: A -> B
--   ^    ^ storage.type.haskell

f 
  :: forall a b
--   ^^^^^^ keyword.other.forall.haskell
--          ^ ^ variable.other.generic-type.haskell
  .  C x
--   ^ storage.type.haskell
--     ^ variable.other.generic-type.haskell
  => D a
--   ^ storage.type.haskell
--     ^ variable.other.generic-type.haskell
  => E b
--   ^ storage.type.haskell
--     ^ variable.other.generic-type.haskell
  -> G
--   ^ storage.type.haskell