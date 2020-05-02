-- SYNTAX TEST "source.haskell" "Issues surrounding reserved operators"


type a ==> b = a --> b
type family a ==> b = a --> b
data a ==> b = a --> b 
data a ==> b where
  (::-)

f :: a ::: b =| c --> d -> e ::: b

(-::) :: a -> a -> a
a -:: b = a

(:::) :: a -> a -> a
a ::: b = a
