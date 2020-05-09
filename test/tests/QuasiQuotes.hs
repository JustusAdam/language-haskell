-- SYNTAX TEST "source.haskell" "Quasi quotes"


    [r|\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}|]
--  ^ ^ keyword.operator.quasi-quotation.begin.haskell
--   ^ entity.name.quasi-quoter.haskell
--                                   ^^ keyword.operator.quasi-quotation.end.haskell
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.quasi-quotation.haskell


    [$html|
--  ^     ^ keyword.operator.quasi-quotation.begin.haskell
--    ^^^^ entity.name.quasi-quoter.haskell
--   ^ keyword.operator.prefix.dollar.haskell
--  ^^^^^^^ meta.quasi-quotation.haskell

    <HTML>
--  ^^^^^^ meta.quasi-quotation.haskell
    |]
--  ^^ keyword.operator.quasi-quotation.end.haskell
--  ^^ meta.quasi-quotation.haskell

    [Mod.xml'| <xml /> |]
--  ^        ^ keyword.operator.quasi-quotation.begin.haskell
--   ^^^^ entity.name.namespace.haskell
--       ^^^^ entity.name.quasi-quoter.haskell
--                     ^^ keyword.operator.quasi-quotation.end.haskell
--  ^^^^^^^^^^^^^^^^^^^^^ meta.quasi-quotation.haskell

    [ v | v <- [0..1] ]
--  ^^^^^^^^^^^^^^^^^^^ -  meta.quasi-quotation.haskell