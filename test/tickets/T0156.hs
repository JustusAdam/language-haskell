-- SYNTAX TEST "source.haskell" "Non keywords"

patternFoo :: A
-- <------- - keyword.other.pattern.haskell
patternFoo = A
-- <------- - keyword.other.pattern.haskell

typeFoo :: A
-- <---- - keyword.other.type.haskell
typeFoo = A
-- <---- - keyword.other.type.haskell

dataFoo :: A
-- <---- - keyword.other.data.haskell
dataFoo = A
-- <---- - keyword.other.data.haskell

newtypeFoo :: A
-- <------- - keyword.other.newtype.haskell
newtypeFoo = A
-- <------- - keyword.other.newtype.haskell

foreignFoo :: A
-- <------- - keyword.other.foreign.haskell
foreignFoo = A
-- <------- - keyword.other.foreign.haskell

moduleFoo :: A
-- <------ - keyword.other.module.haskell
moduleFoo = A
-- <------ - keyword.other.module.haskell

classFoo :: A
-- <----- - keyword.other.class.haskell
classFoo = A
-- <----- - keyword.other.class.haskell

instanceFoo :: A
-- <-------- - keyword.other.instance.haskell
instanceFoo = A
-- <-------- - keyword.other.instance.haskell

importFoo :: A
-- <------ - keyword.other.import.haskell
importFoo = A
-- <------ - keyword.other.import.haskell

exportFoo :: A
-- <------ - keyword.other.export.haskell
exportFoo = A
-- <------ - keyword.other.export.haskell

whereFoo :: A
-- <----- - keyword.other.where.haskell
whereFoo = A
-- <----- - keyword.other.where.haskell

derivingFoo :: A
-- <-------- - keyword.other.deriving.haskell
derivingFoo = A
-- <-------- - keyword.other.eriving.haskell

viaFoo :: A
-- <--- - keyword.other.deriving-strategy.via.haskell
viaFoo = A
-- <--- - keyword.other.deriving-strategy.via.haskell

defaultFoo :: A
-- <------- - keyword.other.default.haskell
defaultFoo = A
-- <------- - keyword.other.default.haskell

letFoo :: A
-- <--- - keyword.other.let.haskell
letFoo = A
-- <--- - keyword.other.let.haskell

inFoo :: A
-- <-- - keyword.other.in.haskell
inFoo = A
-- <-- - keyword.other.in.haskell

doFoo :: A
-- <-- - keyword.other.do.haskell
doFoo = A
-- <-- - keyword.other.do.haskell

forallFoo :: forallFoo A
-- <------   ^^^^^^ - keyword.other.forall.haskell
--           ^^^^^^^^^ variable.other.generic-type.haskell
forallFoo = A
-- <------ - keyword.other.forall.haskell
