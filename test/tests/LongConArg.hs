-- SYNTAX TEST "source.haskell" "Long parenthesized data field"

data D
    = MkD Bool ( Either SomeQuiteLongType AnotherRatherLongType ) Int Int Int
--    ^^^ constant.other.haskell
--        ^^^^   ^^^^^^ ^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^^^^   ^^^ ^^^ ^^^ storage.type.haskell
