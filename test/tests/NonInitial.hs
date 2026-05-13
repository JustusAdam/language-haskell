-- SYNTAX TEST "source.haskell" "Declarations not at start of line"

import Foo; import Bar (baz); import Quux ( type (+) )
--          ^^^^^^            ^^^^^^ keyword.other.import.haskell
--   	                  ^^^ entity.name.function.haskell
--   	                                      ^^^^ keyword.other.type.haskell
--                                                ^ storage.type.operator.haskell

class C a where {} ; class D a where {}
--                   ^^^^^ 	keyword.other.class.haskell
--                         ^ storage.type.haskell

type instance F Int = Char

x = 3; type family F a; type instance F Int = Char; instance C Int ; data G a = MkG a Int
--     ^^^^^^^^^^^ meta.declaration.type.family.haskell
--                 ^                  ^ ^^^   ^^^^             ^^^        ^           ^^^^ storage.type.haskell
--                      ^^^^ keyword.other.type.haskell
--                           ^^^^^^^^ keyword.other.instance.haskell
--                                                                   ^^^^ meta.declaration.data.algebraic.haskell


y = 4; pattern P :: Bool; pattern P = False;
--     ^^^^^^^            ^^^^^^^ keyword.other.pattern.haskell

z = 5; foreign import ccall safe "string.h strlen"
--     ^^^^^^^ keyword.other.foreign.haskell
--             ^^^^^^ keyword.other.import.haskell
--                    ^^^^^ keyword.other.calling-convention.ccall.haskell
--                          ^^^^ keyword.other.safety.safe.haskell
--                                ^^^^^^^^^^^^^^^^^ string.quoted.double.haskell
--     ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.foreign.haskell
