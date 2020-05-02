-- SYNTAX TEST "source.haskell" "Edge cases for type vs value highlighting"

fun = do
    x :: T -> T <- D ( \ (x :: T) -> D )
--       ^    ^                ^ storage.type.haskell
--                 ^                 ^ constant.other.haskell

a = D { a = D :: T } D
--               ^  storage.type.haskell
--  ^       ^        ^ constant.other.haskell

x :: T ->

    -- comment
    {-
      comment
    -}
     

      T
--    ^ storage.type.haskell

y
  :: T ->

  -- comment
  {-
    comment
  -}

      T
--    ^ storage.type.haskell
