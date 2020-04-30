-- SYNTAX TEST "source.haskell" "Qualified infix functions"

f = item `elem` list
--        ^^^^ keyword.operator.function.infix.haskell
g = item `Qual.member` set
--        ^^^^^^^^^^^ keyword.operator.function.infix.haskell
--        ^^^^ entity.name.namespace.haskell

h = 
    a `C.A.Constr` b
--    ^^^^^^^^^^^^ keyword.operator.function.infix.haskell
--     ^^^^ entity.name.namespace.haskell
--         ^^^^^^ constant.other.haskell
    a `C.A.f` b
--    ^^^^^^^ keyword.operator.function.infix.haskell
--     ^^^^ entity.name.namespace.haskell
