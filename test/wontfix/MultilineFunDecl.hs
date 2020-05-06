-- SYNTAX TEST "source.haskell" "Multi-line function type declarations"


f 
-- <- meta.function.type-declaration.haskell
-- <- entity.name.function.haskell
  :: A -> B


f
-- <- meta.function.type-declaration.haskell
-- <- entity.name.function.haskell
  :: forall a b
  .  C x
  => D a
  => E b
  -> G