-- SYNTAX TEST "source.haskell" "Escaped chars"

chars = [ '\^A', '\^@', '\n' ]
--        ^^^^^  ^^^^^  ^^^^ string.quoted.single.haskell
--         ^^^    ^^^ constant.character.escape.control.haskell
--                       ^^ constant.character.escape.haskell