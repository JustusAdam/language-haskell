-- SYNTAX TEST "source.haskell" "Escaped strings"

astring = "\^A \^@ \^_"
--        ^^^^^^^^^^^^^ string.quoted.double.haskell
--         ^^^ ^^^ ^^^ constant.character.escape.control.haskell
anotherstring = "^\\ \n"
--              ^^^^^^^^ string.quoted.double.haskell
--                ^^ ^^ constant.character.escape.haskell