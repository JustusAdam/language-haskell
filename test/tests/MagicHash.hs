-- SYNTAX TEST "source.haskell" "Magic hash/unboxed tuples"



    f :: (# Word8#, Int8#, Bool# #) -> (# Word8#, Int8#, Bool# #)
--        ^                      ^      ^                      ^ keyword.operator.magic-hash.haskell
    f (# a, b, c #) = (# a, b, c #)
--     ^         ^     ^         ^ keyword.operator.magic-hash.haskell

    g :: (##)
--        ^^ keyword.operator.magic-hash.haskell
--       ^^^^ support.constant.unit.unboxed.haskell
    g = (##)
--       ^^ keyword.operator.magic-hash.haskell
--      ^^^^ constant.language.unit.unboxed.haskell

    one## :: Word8#
--     ^^ keyword.operator.magic-hash.haskell
--                ^ keyword.type.operator.magic-hash.haskell
    one## = 1##
--     ^^    ^^ keyword.operator.magic-hash.haskell
    
    type family Tuple# xs = t | t -> xs where
--                   ^ keyword.type.operator.magic-hash.haskell
       Tuple# '[]                  = (##)
--          ^ keyword.type.operator.magic-hash.haskell
--                                    ^^ keyword.operator.magic-hash.haskell
       Tuple# '[a]                 = (# a #)
--          ^ keyword.type.operator.magic-hash.haskell
--                                    ^   ^  keyword.operator.magic-hash.haskell
       Tuple# '[a,b]               = (# a,b #)
--          ^ keyword.type.operator.magic-hash.haskell
--                                    ^     ^ keyword.operator.magic-hash.haskell