-- SYNTAX TEST "source.haskell.alex" "Alex apostrophes etc"

%_wrapper "basic"
-- <-------- entity.name.pragma.alex

%wrapper' "basic"
-- <-------- entity.name.pragma.alex

%wrap'pe_r_ "basic"
-- <---------- entity.name.pragma.alex

$digit' = 0-9
-- <------ entity.name.macro.character-set.alex

$d'igi_t_ = 0-9
-- <-------- entity.name.macro.character-set.alex
