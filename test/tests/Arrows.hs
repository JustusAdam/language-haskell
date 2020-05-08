-- SYNTAX TEST "source.haskell" "Arrow keywords"

  h a b = proc (a, r) -> do rec
--                    ^^ keyword.operator.arrow.haskell
--        ^^^^ keyword.control.proc.haskell
--                       ^^ keyword.control.do.haskell
--                          ^^^ keyword.control.rec.haskell
    (f -< (a, r)) `h` \e -> g -< ((a, e), r)
--                    ^ keyword.operator.lambda.haskell
--                       ^^ keyword.operator.arrow.haskell
--     ^^                     ^^ keyword.operator.arrow.left.tail.haskell