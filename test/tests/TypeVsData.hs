-- SYNTAX TEST "source.haskell" "Edge cases for type vs value highlighting"

fun = do
    x :: T -> T <- D ( \ (x :: T) -> D )
--                        ^ - variable.other.generic-type.haskell
--       ^    ^                ^ storage.type.haskell
--                 ^                 ^ constant.other.haskell

a = D { a = D :: T } D
--               ^  storage.type.haskell
--  ^       ^        ^ constant.other.haskell

x  :: T ->

    -- comment
    {-
      comment
    -}
     

      T
--    ^ storage.type.haskell


x 
  :: T ->

    -- comment
    {-
      comment
    -}
     

      T
--    ^ storage.type.haskell
