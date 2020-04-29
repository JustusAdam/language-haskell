-- SYNTAX TEST "source.haskell" "Module exporting a module"

module Main 
    ( module M
--    ^^^^^^ meta.declaration.exports.haskell keyword.other.module.haskell
    , M
--    ^ meta.declaration.exports.haskell storage.type.haskell
    , foo
--    ^^^ meta.declaration.exports.haskell entity.name.function.haskell
    ) where