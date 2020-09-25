-- SYNTAX TEST "source.haskell" "Symbolic pattern synonyms"


    pattern (:<..<), (:<=..<=) :: t -> t -> Interval t
--  ^^^^^^^ keyword.other.pattern.haskell
--           ^^^^^    ^^^^^^^ constant.other.operator.haskell
    pattern (:<..<)   s e = s :<..<   e
--           ^^^^^ constant.other.operator.haskell
--                            ^^^^^ constant.other.operator.infix.haskell
    pattern (:<=..<=) s e = s :<=..<= e
--           ^^^^^^^ constant.other.operator.haskell
--                            ^^^^^^^ constant.other.operator.infix.haskell
