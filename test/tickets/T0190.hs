-- SYNTAX TEST "source.haskell" "Type variables in foreign import/export"

    foreign import ccall unsafe "memcmp"
      memcmp :: Ptr a -> Ptr ( b :: ty ) -> CSize -> IO CInt
--                  ^          ^    ^^ - entity.name.function.haskell
--                  ^          ^    ^^ variable.other.generic-type.haskell
--                    ^^                 ^^       ^^ keyword.operator.arrow.haskell
--              ^^^      ^^^                ^^^^^    ^^ ^^^^ 	storage.type.haskell