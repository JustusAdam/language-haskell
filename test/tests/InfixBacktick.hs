-- SYNTAX TEST "source.haskell" "Backticked infix operators"


    a `foo` b
--     ^^^  keyword.operator.function.infix.haskell
--     ^^^ - constant.other.haskell
--    ^   ^ punctuation.backtick.haskell
    a `_foo'` b
--     ^^^^^  keyword.operator.function.infix.haskell
--     ^^^^^ - constant.other.haskell
--    ^     ^ punctuation.backtick.haskell
    a `ABC.foo` b
--     ^^^^ entity.name.namespace.haskell
--         ^^^ keyword.operator.function.infix.haskell
--         ^^^ - constant.other.haskell
--    ^       ^ punctuation.backtick.haskell
    a `ABC._foo'` b
--     ^^^^ entity.name.namespace.haskell
--         ^^^^^ keyword.operator.function.infix.haskell
--         ^^^^^ - constant.other.haskell
--    ^         ^ punctuation.backtick.haskell

    a `A` b
--     ^ keyword.operator.function.infix.haskell
--     ^ constant.other.haskell
--    ^ ^ punctuation.backtick.haskell
    a `ABC.A_'` b
--     ^^^^ entity.name.namespace.haskell
--         ^^^ keyword.operator.function.infix.haskell
--         ^^^ constant.other.haskell
--    ^       ^ punctuation.backtick.haskell
    f :: a `A` b
--          ^ storage.type.infix.haskell
--         ^ ^ punctuation.backtick.haskell
    f :: a '`A` b
--         ^ keyword.operator.promotion.haskell
--           ^ storage.type.infix.haskell
--          ^ ^ punctuation.backtick.haskell
    f :: a `ABC.A` b
--          ^^^^ entity.name.namespace.haskell
--              ^ storage.type.infix.haskell
--         ^     ^ punctuation.backtick.haskell
    f :: a '`ABC.A` b
--         ^ keyword.operator.promotion.haskell
--           ^^^^ entity.name.namespace.haskell
--               ^ storage.type.infix.haskell
--          ^     ^ punctuation.backtick.haskell
