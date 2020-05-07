-- SYNTAX TEST "source.haskell" "Type/data families and instances"

type family CTF1 a b where
-- <---- keyword.other.type.haskell
--   ^^^^^^ keyword.other.family.haskell
--          ^^^^ storage.type.haskell
--               ^ ^ variable.other.generic-type.haskell
    CTF1 a b = D a
--  ^^^^       ^ storage.type.haskell
--       ^ ^     ^ variable.other.generic-type.haskell
type family CTF2 (a :: k) :: B where
-- <---- keyword.other.type.haskell
--   ^^^^^^ keyword.other.family.haskell
--                ^    ^ variable.other.generic-type.haskell
--          ^^^^             ^ storage.type.haskell

type family CTF3 (a :: A) = (r :: A) | r -> a where
-- <---- keyword.other.type.haskell
--   ^^^^^^ keyword.other.family.haskell
--                        ^ keyword.operator.eq.haskell
--                     ^          ^ storage.type.haskell
--                                   ^ keyword.operator.pipe.haskell
--                ^          ^         ^    ^ variable.other.generic-type.haskell
--                                            ^^^^^ keyword.other.where.haskell

type family CTF4
-- <---- keyword.other.type.haskell
--   ^^^^^^ keyword.other.family.haskell
              (a :: A)
--             ^ variable.other.generic-type.haskell
--                  ^ storage.type.haskell
              (b :: B)
--             ^ variable.other.generic-type.haskell
--                  ^ storage.type.haskell
            = (r :: A)
--          ^ keyword.operator.eq.haskell
--             ^ variable.other.generic-type.haskell
--                  ^ storage.type.haskell
            | r -> a b
--            ^    ^ ^ variable.other.generic-type.haskell
--          ^ keyword.operator.pipe.haskell
            where
--          ^^^^^ keyword.other.where.haskell

type family   OTF a b
-- <---- keyword.other.type.haskell
--   ^^^^^^ keyword.other.family.haskell
--            ^^^ storage.type.haskell
--                ^ ^ variable.other.generic-type.haskell
type instance OTF (a,a) c = (a,c)
-- <---- keyword.other.type.haskell
--   ^^^^^^^^ keyword.other.instance.haskell
--            ^^^ storage.type.haskell
--                 ^ ^  ^    ^ ^ variable.other.generic-type.haskell
type instance
-- <---- keyword.other.type.haskell
--   ^^^^^^^^ keyword.other.instance.haskell
    OTF (Int, Bool) = Char
--  ^^^  ^^^  ^^^^    ^^^^ storage.type.haskell
--                  ^ keyword.operator.eq.haskell

data   family DF (x :: Bool)
-- <---- keyword.other.data.haskell
--     ^^^^^^ keyword.other.family.haskell
--                ^ variable.other.generic-type.haskell
--                     ^^^^ storage.type.haskell
newtype instance DF 'True = DCTrue Int
-- <------- keyword.other.newtype.haskell
--      ^^^^^^^^ keyword.other.instance.haskell
--               ^^ storage.type.haskell
--                          ^^^^^^ constant.other.haskell
--                                 ^^^ storage.type.haskell
data instance DF 'False where
-- <---- keyword.other.data.haskell
--   ^^^^^^^^ keyword.other.instance.haskell
--            ^^  ^^^^^ storage.type.haskell
    DCFalse :: Float -> DF 'False
--  ^^^^^^^ constant.other.haskell
--             ^^^^^    ^^  ^^^^^ storage.type.haskell
