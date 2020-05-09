-- SYNTAX TEST "source.haskell" "Empty typeclass and empty instances"

class A x where
-- <----- keyword.other.class.haskell
-- <---------- meta.declaration.class.haskell
class B x
-- <----- keyword.other.class.haskell
-- <--------- meta.declaration.class.haskell

normal :: Int
-- <------ meta.function.type-declaration.haskell entity.name.function.haskell
-- <------------- - invalid

class C x => Dx
-- <----- keyword.other.class.haskell
-- <--------------- meta.declaration.class.haskell

instance A x where
-- <-------- keyword.other.instance.haskell
-- <------------- meta.declaration.instance.haskell
instance B x
-- <-------- keyword.other.instance.haskell
-- <------------ meta.declaration.instance.haskell
instance C x => D x
-- <-------- keyword.other.instance.haskell
-- <------------------- meta.declaration.instance.haskell