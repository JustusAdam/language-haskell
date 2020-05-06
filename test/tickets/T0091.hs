-- SYNTAX TEST "source.haskell" "Indented modules"

module Foo where

    data Foo where
--  ^^^^ keyword.other.data.haskell
      MkFoo :: Foo
--    ^^^^^ constant.other.haskell
--             ^^^ storage.type.haskell

    myFoo :: Foo
--  ^^^^^ entity.name.function.haskell
--  ^^^^^^^^^^^^  meta.function.type-declaration.haskell
--  ^^^^^^^^^^^^ - meta.declaration.data.generalized.haskell
    myFoo = foo
