-- SYNTAX TEST "source.haskell" "Numeric escapes in string literals"

    str = "abc\129z\123\&4\o1239\xf12zf"
--            ^^^^ ^^^^ constant.character.escape.decimal.haskell
--                ^    ^^^ - constant.character.escape.decimal.haskell
--                         ^^^^ constant.character.escape.octal.haskell
--                             ^ - constant.character.escape.octal.haskell
--                              ^^^^^ constant.character.escape.hexadecimal.haskell
--                                   ^^ - constant.character.escape.hexadecimal.haskell

