-- SYNTAX TEST "source.haskell" "Data kind signatures"

data D (a :: Kind) (b :: k -> [Type]) = D
-- <---- meta.declaration.adt.haskell keyword.other.data.haskell
--      ^ variable.other.generic-type.haskell
--        ^^ keyword.operator.double-colon.haskell

data Tuple (ts :: [Type]) where
-- <---- meta.declaration.type.gadt.haskell keyword.other.data.haskell
--          ^^ variable.other.generic-type.haskell
--             ^^ keyword.operator.double-colon.haskell
  Nil :: Tuple '[]
  Cons :: !t -> !(Tuple ts) -> Tuple (t : ts)

data GADT2 :: Type -> Type where
-- <---- meta.declaration.type.gadt.haskell keyword.other.data.haskell
--         ^^ keyword.operator.double-colon.haskell
  C2 :: GADT2 Int
