-- SYNTAX TEST "source.haskell" "Lists starting with '|'"

removed as = removeChars ['|', '-'] as
--                        ^^^ string.quoted.single.haskell
--                       ^^^^^^^^^^^^^ - meta.quasi-quotation.haskell
