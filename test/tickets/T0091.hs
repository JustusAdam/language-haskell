-- SYNTAX TEST "source.haskell" "Indented modules"

module Foo where

    data Foo where
--  ^^^^ keyword.other.data.haskell
--  ^^^^^^^^^^^^^^ meta.declaration.type.gadt.haskell
      MkFoo :: Foo
--    ^^^^^^^^^^^^ meta.declaration.type.gadt.haskell
--    ^^^^^ constant.other.haskell
--             ^^^ storage.type.haskell

    myFoo :: Foo
--  ^^^^^ entity.name.function.haskell
--  ^^^^^^^^^^^^  meta.function.type-declaration.haskell
--  ^^^^^^^^^^^^ - meta.declaration.type.gadt.haskell
    myFoo = foo
