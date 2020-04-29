-- SYNTAX TEST "source.haskell" "Type/data families and instances"

type family CTF1 a b where
--   ^^^^^^ keyword.other.haskell
--          ^^^^ storage.type.haskell
--               ^ ^ ^ variable.other.generic-type.haskell
    CTF1 a b = D a
--  ^^^^       ^ storage.type.haskell
--       ^ ^     ^ variable.other.generic-type.haskell
type family CTF2 (a :: k) :: B where
--   ^^^^^^ keyword.other.haskell
--          ^^^^             ^ storage.type.haskell
--                ^    ^ variable.other.generic-type.haskell
type family CTF3 (a :: A) = (r :: A) | r -> a where
--   ^^^^^^ keyword.other.haskell
--                ^          ^         ^    ^ variable.other.generic-type.haskell
--                     ^          ^ storage.type.haskell

type family   OTF a b
--   ^^^^^^ keyword.other.haskell
--            ^^^ storage.type.haskell
--                ^ ^ variable.other.generic-type.haskell
type instance OTF (a,a) c = (a,c)
--   ^^^^^^^^ keyword.other.haskell
--            ^^^ storage.type.haskell
--                 ^ ^  ^    ^ ^ variable.other.generic-type.haskell
type instance
--   ^^^^^^^^ keyword.other.haskell
    OTF (Int, Bool) = Char
--  ^^^  ^^^  ^^^^    ^^^^ storage.type.haskell

data   family DF (x :: Bool)
--     ^^^^^^ keyword.other.haskell
--                ^ variable.other.generic-type.haskell
--                     ^^^^ storage.type.haskell
data instance DF 'True = DCTrue Int
--   ^^^^^^^^ keyword.other.haskell
--            ^^ storage.type.haskell
--                       ^^^^^^ constant.other.haskell
data instance DF 'False where
--   ^^^^^^^^ keyword.other.haskell
--            ^^ storage.type.haskell
    DCFalse :: Float -> DF 'False
--  ^^^^^^^ constant.other.haskell
