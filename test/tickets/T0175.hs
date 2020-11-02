-- SYNTAX TEST "source.haskell" "Unicode forall"

foo :: (∀ a. Num a => a -> a) -> (Int,Double) -> (Int,Double)
--      ^ keyword.other.forall.haskell
--         ^ keyword.operator.period.haskell
foo f (a,b) = (f a, f b)

bar :: (forall a. Num a => a -> a) -> (Int,Double) -> (Int,Double)
--      ^^^^^^ keyword.other.forall.haskell
--              ^ keyword.operator.period.haskell
bar f (a,b) = (f a, f b)

notForall :: x ∀∀ y -> z
--             ^^ - keyword.other.forall.haskell
