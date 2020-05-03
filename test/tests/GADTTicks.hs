-- SYNTAX TEST "source.haskell" "Ticks in GADT constructors"

    data D where
      T'          :: D
--    ^^ constant.other.haskell
      T_'_'_''t   :: D
--    ^^^^^^^^^ constant.other.haskell
      T_'ttt_'t_' :: D
--    ^^^^^^^^^^^ constant.other.haskell
      T'x'''      :: D
--    ^^^^^^ constant.other.haskell