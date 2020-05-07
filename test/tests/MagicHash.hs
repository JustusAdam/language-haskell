-- SYNTAX TEST "source.haskell" "Magic hash/unboxed tuples"



    f :: (# Word8#, Int8#, Bool# #) -> (# Word8#, Int8#, Bool# #)
--               ^      ^      ^               ^      ^      ^ keyword.operator.postfix.hash.haskell
--        ^                      ^      ^                      ^ keyword.operator.hash.haskell

    f (# a, b, c #) = (# a, b, c #)
--     ^         ^     ^         ^ keyword.operator.hash.haskell

    g :: (##)
--        ^^ keyword.operator.hash.haskell
--       ^^^^ support.constant.unit.unboxed.haskell
    g = (##)
--       ^^ keyword.operator.hash.haskell
--      ^^^^ constant.language.unit.unboxed.haskell

    a # b # c
--    ^   ^ - keyword.operator.hash.haskell keyword.operator.postfix.hash.haskell
--    ^   ^ keyword.operator.infix.haskell

    f :: A # B # c
--         ^   ^ - keyword.operator.hash.haskell keyword.operator.postfix.hash.haskell
--         ^   ^ storage.type.operator.infix.haskell

    one## :: Word8#
--     ^^         ^ keyword.operator.postfix.hash.haskell
    one## = 1##
--     ^^    ^^ keyword.operator.postfix.hash.haskell

    foo# :: Addr#
--     ^        ^ keyword.operator.postfix.hash.haskell
    foo# = "foo"#
--     ^        ^ keyword.operator.postfix.hash.haskell

    
    type family Tuple# xs = t | t -> xs where
--                   ^ keyword.operator.postfix.hash.haskell
       Tuple# '[]                  = (##)
--          ^ keyword.operator.postfix.hash.haskell
--                                    ^^ keyword.operator.hash.haskell
       Tuple# '[a]                 = (# a #)
--          ^ keyword.operator.postfix.hash.haskell
--                                    ^   ^  keyword.operator.hash.haskell
       Tuple# '[a,b]               = (# a,b #)
--          ^ keyword.operator.postfix.hash.haskell
--                                    ^     ^ keyword.operator.hash.haskell
