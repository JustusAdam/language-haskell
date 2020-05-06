-- SYNTAX TEST "source.haskell" "Unusual type applications"


f =  g @A
--     ^^ meta.type-application.haskell
f = [g]@A
--     ^^ meta.type-application.haskell
f = {g}@A
--     ^^ meta.type-application.haskell
f =  g,@A
--     ^^ meta.type-application.haskell
f =  g;@A
--     ^^ meta.type-application.haskell
f = g @(A B C)
--    ^^^^^^^^ meta.type-application.haskell
f = g @'[A B, C]
--    ^^^^^^^^^^ meta.type-application.haskell

f =   g@A
--     ^^ - meta.type-application.haskell
f =   +@A
--     ^^ - meta.type-application.haskell
f =  g@@A
--     ^^ - meta.type-application.haskell
f = g @@A
--     ^^ - meta.type-application.haskell
f = g @!A
--     ^^ - meta.type-application.haskell
f = (g)@A
--     ^^ - meta.type-application.haskell