-- SYNTAX TEST "source.haskell" "Type variables in foreign import/export"

    foreign import ccall unsafe "memcmp"
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.foreign.haskell
      memcmp :: Ptr a -> Ptr (b :: ty) -> CSize -> IO CInt
--    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.foreign.haskell
--    ^^^^^^ entity.name.function.haskell
--           ^^                 ^^ keyword.operator.double-colon.haskell
--                  ^         ^    ^^ - entity.name.function.haskell
--                  ^         ^    ^^ variable.other.generic-type.haskell
--                    ^^               ^^       ^^ keyword.operator.arrow.haskell
--              ^^^      ^^^              ^^^^^    ^^ ^^^^ 	storage.type.haskell

    data A a = Mk A a
--  ^^^^ keyword.other.data.haskell
--       ^        ^ storage.type.haskell
--         ^        ^ variable.other.generic-type.haskell
--             ^^ constant.other.haskell
