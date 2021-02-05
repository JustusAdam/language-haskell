-- SYNTAX TEST "source.haskell" "LinearTypes"

{-# LANGUAGE LinearTypes #-}
--           ^^^^^^^^^^^ 	keyword.other.preprocessor.extension.haskell

construct :: a %1 -> T1 a
--             ^ keyword.operator.prefix.modifier.haskell
construct x = MkT1 x

deconstruct :: T1 a %1 -> a
--                  ^ keyword.operator.prefix.modifier.haskell
deconstruct (MkT1 x) = x

data T2 a b c where
    MkT2 :: a -> b %1 -> c %1 -> T2 a b c
--                 ^       ^ keyword.operator.prefix.modifier.haskell

data T3 a m where
    MkT3 :: a %m -> T3 a m
--            ^ keyword.operator.prefix.modifier.haskell


f2 :: Int %Many -> Bool
--        ^ keyword.operator.prefix.modifier.haskell
f3 :: Int %m -> Bool
--        ^ keyword.operator.prefix.modifier.haskell
f4 :: Int %(m :: Multiplicity) -> Bool
--        ^ keyword.operator.prefix.modifier.haskell

map :: forall (m :: Multiplicity). (a %m -> b) -> [a] %m -> [b]
--                                    ^               ^ keyword.operator.prefix.modifier.haskell

foo :: a % b -> c % d
--       ^        ^ - keyword.operator.prefix.modifier.haskell

bar :: a %%b -> c %-% d
--       ^^       ^ ^ - keyword.operator.prefix.modifier.haskell

