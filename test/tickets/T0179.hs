-- SYNTAX TEST "source.haskell" "Constraint arrow in data type field"

data WithDict c x = MkWithDict ( c => x )
--   ^^^^^^^^ storage.type.haskell
--                  ^^^^^^^^^^ constant.other.haskell
--                                 ^^ keyword.operator.big-arrow.haskell

data WithDict2 c x = MkWithDict2 { field :: c => x }
--   ^^^^^^^^ storage.type.haskell
--                                       ^^ keyword.operator.double-colon.haskell
--                  ^^^^^^^^^^ constant.other.haskell
--                                 ^^^^^ variable.other.member.definition.haskel
--                                            ^^ keyword.operator.big-arrow.haskell
