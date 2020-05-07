-- SYNTAX TEST "source.haskell" "Unusual type applications"


f =  g @A
--     ^ keyword.operator.prefix.at.haskell
--     ^^ meta.type-application.haskell
f = [g]@A
--     ^ keyword.operator.prefix.at.haskell
--     ^^ meta.type-application.haskell
f = {g}@A
--     ^ keyword.operator.prefix.at.haskell
--     ^^ meta.type-application.haskell
f =  g,@A
--     ^ keyword.operator.prefix.at.haskell
--     ^^ meta.type-application.haskell
f =  g;@A
--     ^ keyword.operator.prefix.at.haskell
--     ^^ meta.type-application.haskell
f = g @(A B C)
--    ^ keyword.operator.prefix.at.haskell
--    ^^^^^^^^ meta.type-application.haskell
f = g @'[A B, C]
--    ^ keyword.operator.prefix.at.haskell
--    ^^^^^^^^^^ meta.type-application.haskell

f = g @'A
--    ^ keyword.operator.prefix.at.haskell
--    ^^^ meta.type-application.haskell

f = g @123
--    ^ keyword.operator.prefix.at.haskell
--    ^^^^^^^^^^ meta.type-application.haskell

f = g @"abc c\" de"
--    ^ keyword.operator.prefix.at.haskell
--    ^^^^^^^^^^^^^ meta.type-application.haskell

f =   g@A
--     ^ - keyword.operator.prefix.at.haskell
--     ^^ - meta.type-application.haskell
f =   +@A
--     ^ - keyword.operator.prefix.at.haskell
--     ^^ - meta.type-application.haskell
f =  g@@A
--    ^^ - keyword.operator.prefix.at.haskell
--     ^^ - meta.type-application.haskell
f = g @@A
--    ^^ - keyword.operator.prefix.at.haskell
--     ^^ - meta.type-application.haskell
f = g @!A
--    ^  - keyword.operator.prefix.at.haskell
--     ^^ - meta.type-application.haskell
f = (g)@A
--     ^ - keyword.operator.prefix.at.haskell
--     ^^ - meta.type-application.haskell
