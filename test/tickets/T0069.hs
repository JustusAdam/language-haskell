-- SYNTAX TEST "source.haskell" "Parentheses in import and export lists"
module Main (
   Foo((+-)), func1
--      ^^ meta.declaration.exports.haskell entity.name.function.infix.haskell
--            ^^^^^ meta.declaration.exports.haskell entity.name.function.haskell
--            ^^^^^ - invalid
   , Bar((:->), (:->>)), Baz, func5
--        ^^^    ^^^^ meta.declaration.exports.haskell constant.other.operator.haskell
--                       ^^^ meta.declaration.exports.haskell storage.type.haskell
--                            ^^^^^ meta.declaration.exports.haskell entity.name.function.haskell
    ) where

import Data.Sequence ( Seq() ) 
--                     ^^^^^ meta.import.haskell
import Unison.Name
-- <------------------ - invalid