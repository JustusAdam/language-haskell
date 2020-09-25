-- SYNTAX TEST "source.haskell" "Symbolic type constructors and operators"

data C a b = C a b
-- <---- keyword.other.data.haskell
--   ^ storage.type.haskell
--           ^ constant.other.haskell

data a `D` b = a `D` b
-- <---- keyword.other.data.haskell
--      ^ storage.type.infix.haskell
--                ^ constant.other.infix.haskell

data a `E` b where
-- <---- keyword.other.data.haskell
--      ^ storage.type.infix.haskell

data (:>) a b = (:>) a b
-- <---- keyword.other.data.haskell
--    ^^ storage.type.operator.haskell
--               ^^ constant.other.operator.prefix.haskell

data a :< b = a :< b
-- <---- keyword.other.data.haskell
--     ^^ storage.type.operator.infix.haskell
--              ^^ constant.other.operator.infix.haskell
--     ^^       ^^ - keyword.operator.haskell
--     ^^       ^^ - keyword.operator.infix.haskell

data a := b = a := b
-- <---- keyword.other.data.haskell
--     ^^ storage.type.operator.infix.haskell
--              ^^ constant.other.operator.infix.haskell
--     ^^       ^^ - keyword.operator.haskell
--     ^^       ^^ - keyword.operator.infix.haskell

data (:<>) a b where
-- <---- keyword.other.data.haskell
  (:<>) :: a -> b -> (:<>) a b
-- ^^^ constant.other.operator.prefix.haskell
--                    ^^^ storage.type.operator.haskell

data a :>< b where
-- <---- keyword.other.data.haskell
--     ^^^ storage.type.operator.infix.haskell


type F a b = C a b
-- <---- keyword.other.type.haskell
--   ^       ^ storage.type.haskell

type a `G` b = a `D` b
-- <---- keyword.other.type.haskell
--      ^         ^ storage.type.infix.haskell

type (<<) a b = a <> b
-- <---- keyword.other.type.haskell
--    ^^ storage.type.operator.haskell
--                ^^ storage.type.operator.infix.haskell

type (:>>) a b = a :> b
-- <---- keyword.other.type.haskell
--    ^^^ storage.type.operator.haskell         
--                 ^^ storage.type.operator.infix.haskell

type a :<< b = a :< b
-- <---- keyword.other.type.haskell
--     ^^^       ^^ storage.type.operator.infix.haskell

type a :== b = a := b
-- <---- keyword.other.type.haskell
--     ^^^       ^^ storage.type.operator.infix.haskell
--     ^^^       ^^ - keyword.operator.haskell
