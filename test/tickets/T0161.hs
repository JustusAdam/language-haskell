-- SYNTAX TEST "source.haskell" "Data constructor highlighting"

    data Foo a = (:>) a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a  
--  ^^^^ keyword.other.data.haskell 
--             ^ keyword.operator.eq.haskell
--                ^^ constant.other.operator.prefix.haskell
--           ^        ^ ^ ^                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ^ ^ ^ variable.other.generic-type.haskell

    data Foo a = (:>) `C` ( S, O ) deriving ( Show, Ord )
--  ^^^^ keyword.other.data.haskell 
--           ^ variable.other.generic-type.haskell
--             ^ keyword.operator.eq.haskell
--                ^^ storage.type.operator.haskell
--                ^^ - constant.other.operator.haskell
--                     ^ constant.other.infix.haskell
--                                 ^^^^^^^^ keyword.other.deriving.haskell
--       ^^^                ^  ^              ^^^^  ^^^ storage.type.haskell

    data Foo a = (:>) Bar a deriving ( Show, Ord )
--  ^^^^ keyword.other.data.haskell 
--             ^ keyword.operator.eq.haskell
--                ^^ constant.other.operator.prefix.haskell
--           ^            ^ variable.other.generic-type.haskell
--                          ^^^^^^^^ keyword.other.deriving.haskell
--       ^^^          ^^^              ^^^^  ^^^ storage.type.haskell
