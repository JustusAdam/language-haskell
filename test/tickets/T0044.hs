-- SYNTAX TEST "source.haskell" "Foreign import/export"

-- Should work for indented modules

    foreign import jvm "string.h strlen"
--  ^^^^^^^ keyword.other.foreign.haskell
--          ^^^^^^ keyword.other.import.haskell
--                 ^^^ keyword.other.calling-convention.jvm.haskell
--                      ^^^^^^^^^^^^^^^ entity.name.foreign.haskell string.quoted.double.haskell
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.foreign.haskell
        cstrlen :: Ptr CChar -> IO CSize 
--      ^^^^^^^ entity.name.function.haskell
--              ^^ keyword.operator.double-colon.haskell
--                 ^^^ ^^^^     ^^ ^^^^^ storage.type.haskell
--      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.foreign.haskell

    foreign export stdcall "string.h strlen" foo :: Ptr CInt
--  ^^^^^^^ keyword.other.foreign.haskell
--          ^^^^^^ keyword.other.export.haskell
--                 ^^^^^^^ keyword.other.calling-convention.stdcall.haskell
--                          ^^^^^^^^^^^^^^^ entity.name.foreign.haskell string.quoted.double.haskell
--                                           ^^^ entity.name.function.haskell
--                                               ^^ keyword.operator.double-colon.haskell
--                                                  ^^^ ^^^^ storage.type.haskell
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.export.foreign.haskell

foreign import ccall safe "string.h strlen"
-- <------- keyword.other.foreign.haskell
--      ^^^^^^ keyword.other.import.haskell
--             ^^^^^ keyword.other.calling-convention.ccall.haskell
--                   ^^^^ keyword.other.safety.safe.haskell
--                         ^^^^^^^^^^^^^^^^^ string.quoted.double.haskell
-- <-------------------------------------- meta.import.foreign.haskell

   cstrlen :: Ptr CChar -> IO CSize
-- ^^^^^^^ entity.name.function.haskell
--            ^^^ ^^^^^    ^^ ^^^^^ storage.type.haskell
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.foreign.haskell

foreign export cplusplus "string.h strlen" foo :: Ptr CInt
-- <------- keyword.other.foreign.haskell
--      ^^^^^^ keyword.other.export.haskell
--             ^^^^^^^^^ keyword.other.calling-convention.cplusplus.haskell
--                         ^^^^^^^^^^^^^^ entity.name.foreign.haskell string.quoted.double.haskell
--                                         ^^^ entity.name.function.haskell
--                                             ^^ keyword.operator.double-colon.haskell
--                                                ^^^ ^^^^ storage.type.haskell
-- <----------------------------------------------------------- meta.export.foreign.haskell

foreign export ccall "addInt" (+) :: Int   -> Int   -> Int
-- <------- keyword.other.foreign.haskell
--      ^^^^^^ keyword.other.export.haskell
--             ^^^^^ keyword.other.calling-convention.ccall.haskell
--                    ^^^^^^  entity.name.foreign.haskell string.quoted.double.haskell
--                             ^ entity.name.function.infix.haskell
--                                ^^ keyword.operator.double-colon.haskell
--                                   ^^^      ^^^      ^^^ storage.type.haskell
-- <---------------------------------------------------------- meta.export.foreign.haskell
foreign export prim interruptible "addFloat" (+) :: Float -> Float -> Float
-- <------- keyword.other.foreign.haskell
--      ^^^^^^ keyword.other.export.haskell
--                  ^^^^^^^^^^^^^ keyword.other.safety.interruptible.haskell
--                                 ^^^^^^^^ entity.name.foreign.haskell string.quoted.double.haskell
--                                            ^ entity.name.function.infix.haskell
--                                               ^^ keyword.operator.double-colon.haskell
--                                                  ^^^^^    ^^^^^     ^^^^^ storage.type.haskell
-- <--------------------------------------------------------------------------- meta.export.foreign.haskell



foreign export ccall safe :: Int -> Int
--                   ^^^^ - keyword.other.safety.safe.haskell
--                   ^^^^ entity.name.function.haskell

foreign export ccall "unsafe" unsafe :: Int -> Int
--                    ^^^^^^ entity.name.foreign.haskell string.quoted.double.haskell
--                            ^^^^^^ - keyword.other.safety.unsafe.haskell
--                            ^^^^^^ entity.name.function.haskell