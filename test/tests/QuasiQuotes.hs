-- SYNTAX TEST "source.haskell" "Quasi quotes"


    [e| A + B + C |]
--  ^ ^ keyword.operator.quasi-quotation.begin.haskell
--   ^ entity.name.quasi-quoter.haskell
--      ^   ^   ^ constant.other.haskell
--        ^   ^ keyword.operator.infix.haskell
--                ^^ keyword.operator.quasi-quotation.end.haskell
--  ^^^^^^^^^^^^^^^^ meta.quasi-quotation.haskell

    [|| A + B + C ||]
--  ^^^ keyword.operator.quasi-quotation.begin.haskell
--      ^   ^   ^ constant.other.haskell
--        ^   ^ keyword.operator.infix.haskell
--                ^^^ keyword.operator.quasi-quotation.end.haskell
--  ^^^^^^^^^^^^^^^^^ meta.quasi-quotation.haskell

    [p| A |]
--  ^ ^ keyword.operator.quasi-quotation.begin.haskell
--   ^ entity.name.quasi-quoter.haskell
--      ^ constant.other.haskell
--        ^^ keyword.operator.quasi-quotation.end.haskell
--  ^^^^^^^^ meta.quasi-quotation.haskell


    [t| A -> B -> C |]
--  ^ ^ keyword.operator.quasi-quotation.begin.haskell
--   ^ entity.name.quasi-quoter.haskell
--      ^    ^    ^ storage.type.haskell
--        ^^   ^^ keyword.operator.arrow.haskell
--                  ^^ keyword.operator.quasi-quotation.end.haskell
--  ^^^^^^^^^^^^^^^^^^ meta.quasi-quotation.haskell


    [r|\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}|]
--  ^ ^ keyword.operator.quasi-quotation.begin.haskell
--   ^ entity.name.quasi-quoter.haskell
--                                   ^^ keyword.operator.quasi-quotation.end.haskell
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.quasi-quotation.haskell


    [i|| A |]
--  ^ ^ keyword.operator.quasi-quotation.begin.haskell
--   ^ entity.name.quasi-quoter.haskell
--     ^^^^ meta.quasi-quotation.haskell meta.embedded.block.i
--         ^^ keyword.operator.quasi-quotation.end.haskell
--  ^^^^^^^^^ meta.quasi-quotation.haskell

    [$html|
--  ^     ^ keyword.operator.quasi-quotation.begin.haskell
--    ^^^^ entity.name.quasi-quoter.haskell
--   ^ keyword.operator.prefix.dollar.haskell
--  ^^^^^^^ meta.quasi-quotation.haskell

    <HTML>
--  ^^^^^^ meta.quasi-quotation.haskell
--  ^^^^^^ meta.embedded.block.html
    |]
--  ^^ keyword.operator.quasi-quotation.end.haskell
--  ^^ meta.quasi-quotation.haskell

    [Mod.xml| <xml /> |]
--  ^       ^ keyword.operator.quasi-quotation.begin.haskell
--   ^^^^ entity.name.namespace.haskell
--       ^^^ entity.name.quasi-quoter.haskell
--                    ^^ keyword.operator.quasi-quotation.end.haskell
--  ^^^^^^^^^^^^^^^^^^^^ meta.quasi-quotation.haskell
--            ^^^^^^^ meta.embedded.block.xml

    [a'|'xyz|]
--   ^^ entity.name.quasi-quoter.haskell
--  ^  ^ keyword.operator.quasi-quotation.begin.haskell
--          ^^ keyword.operator.quasi-quotation.end.haskell
--  ^^^^^^^^^^ meta.quasi-quotation.haskell

    [ v | v <- [0..1] ]
--  ^^^^^^^^^^^^^^^^^^^ -  meta.quasi-quotation.haskell