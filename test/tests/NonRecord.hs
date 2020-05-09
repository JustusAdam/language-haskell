-- SYNTAX TEST "source.haskell" "Braces not indicating record syntax"

    where {
--  ^^^^^ keyword.other.where.haskell
--        ^ punctuation.brace.haskell
--        ^ - meta.record.haskell
       a = A
--     ^^^^^ - meta.record.haskell
--     ^ - variable.other.member.haskell
    ;  b = B
--  ^^^^^^^^ - meta.record.haskell
--     ^ - variable.other.member.haskell
    }
--  ^ punctuation.brace.haskell
--  ^ - meta.record.haskell


   class C a where { meth :: a }
--                 ^           ^ punctuation.brace.haskell
--                 ^^^^^^^^^^^^^ - meta.record.haskell
--                   ^^^^ - variable.other.member.haskell

    data C :: A -> B -> Type where { C :: A a b }
--                                 ^^^^^^^^^^^^^^ - meta.record.haskell
