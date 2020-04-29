-- SYNTAX TEST "source.haskell" "Qualified infix functions"

f = 
    a `C.A.Constr` b
--    ^^^^^^^^^^^^ keyword.operator.function.infix.haskell
--     ^^^^ entity.name.namespace
--         ^^^^^^ constant.other.haskell
    a `C.A.f` b
--    ^^^^^^^ keyword.operator.function.infix.haskell
--     ^^^^ entity.name.namespace
