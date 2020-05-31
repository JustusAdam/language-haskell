-- SYNTAX TEST "source.haskell" "Ticks in qualified names"



f = A''.B'C.g `DE'.G'H.h` k XY'.A'B.+ z
--  ^^^^^^^^   ^^^^^^^^     ^^^^^^^^ entity.name.namespace.haskell

type S = A'.B.C'D.E `DE'.G'H.T` L XY'.A'B.+ Z
--       ^^^^^^^^^   ^^^^^^^^     ^^^^^^^^ entity.name.namespace.haskell

type T = 'A.C + 'B.+ D
--       ^      ^ - entity.name.namespace.haskell