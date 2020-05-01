-- SYNTAX TEST "source.haskell" "Qualified infix functions"

f = item `elem` list
--        ^^^^ keyword.operator.function.infix.haskell
g = item `Qual.member` set
--        ^^^^^^^^^^^ keyword.operator.function.infix.haskell
--        ^^^^^ entity.name.namespace.haskell
--             ^^^^^^ - entity.name.namespace.haskell
g = item `Qual.Fun.member` set
--        ^^^^^^^^^^^^^^^ keyword.operator.function.infix.haskell
--        ^^^^^ entity.name.namespace.haskell
--                 ^^^^^^ - entity.name.namespace.haskell

h = 
    a `C.A.Constr` b
--    ^^^^^^^^^^^^ keyword.operator.function.infix.haskell
--     ^^^^ entity.name.namespace.haskell
--         ^^^^^^ - entity.name.namespace.haskell
    a `C.A.f` b
--    ^^^^^^^ keyword.operator.function.infix.haskell
--     ^^^^ entity.name.namespace.haskell

    a C.A.+ b
----- ^^^^ entity.name.namespace.haskell
    (C.A.*) b c
--   ^^^^ entity.name.namespace.haskell

    a C.A.:& b
--    ^^^^ entity.name.namespace.haskell
    (C.A.:+:) b c
--   ^^^^ entity.name.namespace.haskell
