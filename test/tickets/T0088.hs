-- SYNTAX TEST "source.haskell" "Non-ASCII unicode text"

unicöde :: String -> [Char]
-- <------- entity.name.function.haskell
-- <--------------------------- meta.function.type-declaration.haskell
-- <--------------------------- - invalid
unicöde = undefined
-- <------------------- - invalid