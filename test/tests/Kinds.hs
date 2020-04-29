-- SYNTAX TEST "source.haskell" "Kind signatures"

data D (a :: Kind) (b :: k -> [Type]) = D
--      ^           ^    ^ variable.other.generic-type.haskell
--           ^^^^              ^^^^ storage.type.haskell
--        ^^          ^^ keyword.operator.double-colon.haskell
data D (a :: Kind) (b :: k -> [Type]) where
--      ^           ^    ^ variable.other.generic-type.haskell
--           ^^^^              ^^^^ storage.type.haskell
--        ^^          ^^ keyword.operator.double-colon.haskell

data D :: k -> [Type] where
--     ^^ keyword.operator.double-colon.haskell
--        ^ variable.other.generic-type.haskell
--              ^^^^ storage.type.haskell


colons :: forall (a :: (k :: l)). a -> (x :: a) -> k
--                ^     ^    ^    ^     ^    ^     ^ variable.other.generic-type.haskell
--                  ^^    ^^              ^^ keyword.operator.double-colon.haskell
data X ( a :: ( x :: k ) ) :: k
--       ^      ^    ^        ^ variable.other.generic-type.haskell
--         ^^     ^^       ^^ keyword.operator.double-colon.haskell
