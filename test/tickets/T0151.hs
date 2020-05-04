-- SYNTAX TEST "source.haskell" "Constructors and parentheses"

fail = S (S Z)
--     ^  ^ ^ constant.other.haskell
success = S (S Z )
--        ^  ^ ^ constant.other.haskell