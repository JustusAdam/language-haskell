-- SYNTAX TEST "source.haskell" "Foreign import/export"

foreign import ccall "string.h strlen"
-- <------- keyword.other.foreign.haskell
-- <-------------------- meta.import.foreign.haskell
--                   ^^^^^^^^^^^^^^^^^ string.quoted.double.haskell
   cstrlen :: Ptr CChar -> IO CSize
-- ^^^^^^^    ^^^^^^^^^^^^^^^^^^^^^ meta.function.type-declaration.haskell

foreign export cplusplus  "string.h strlen"
-- <------- keyword.other.foreign.haskell
-- <-------------------- meta.import.foreign.haskell
--                        ^^^^^^^^^^^^^^^^^ string.quoted.double.haskell
foreign import dotnet "string.h strlen"
-- <------- keyword.other.foreign.haskell
-- <-------------------- meta.import.foreign.haskell
--                    ^^^^^^^^^^^^^^^^^ string.quoted.double.haskell

foreign import ccall "errno.h &errno" errno :: Ptr CInt
-- <------- keyword.other.foreign.haskell
-- <-------------------- meta.import.foreign.haskell
--                   ^^^^^^^^^^^^^^^^ string.quoted.double.haskell
--                                    ^^^^^^  ^^^^^^^^^ meta.function.type-declaration.haskell
foreign import ccall "&" bar :: Ptr CInt
-- <------- keyword.other.foreign.haskell
-- <-------------------- meta.import.foreign.haskell
--                   ^^^ string.quoted.double.haskell
--                       ^^^^  ^^^^^^^^^ meta.function.type-declaration.haskell
foreign import ccall foo :: CInt
-- <------- keyword.other.foreign.haskell
-- <-------------------- meta.import.foreign.haskell
--                   ^^^^  ^^^^^ meta.function.type-declaration.haskell

-- Also should work for indented modules, hence here again with indent

    foreign import jvm "string.h strlen"
--  ^^^^^^^ keyword.other.foreign.haskell
--  ^^^^^^^^^^^^^^^^^^ meta.import.foreign.haskell
        cstrlen :: Ptr CChar -> IO CSize 
--      ^^^^^^^    ^^^^^^^^^^^^^^^^^^^^^^ meta.function.type-declaration.haskell
    foreign import stdcall "string.h strlen"
--  ^^^^^^^ keyword.other.foreign.haskell
--  ^^^^^^^^^^^^^^^^^^ meta.import.foreign.haskell

foreign export ccall "addInt"   (+) :: Int   -> Int   -> Int
-- <------- keyword.other.foreign.haskell
-- <-------------------- meta.export.foreign.haskell
--                   ^^^^^^^^ string.quoted.double.haskell
--                              ^^^^  ^^^^^^^^^^^^^^^^^^^^^^ meta.function.type-declaration.haskell
foreign export ccall "addFloat" (+) :: Float -> Float -> Float
-- <------- keyword.other.foreign.haskell
-- <-------------------- meta.export.foreign.haskell
--                   ^^^^^^^^^^ string.quoted.double.haskell
--                              ^^^^  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.type-declaration.haskell
