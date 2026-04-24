-- SYNTAX TEST "source.haskell" "Type signature in pattern"

pattern MkZ fld3 <- ( foo -> ( fld3 TYPE rep ) )
  where
    MkZ fld3 = bar


pattern MkZ fld3 <- ( foo -> ( fld3 :: TYPE rep ) )
--               ^^ keyword.operator.arrow.left.haskell
--                        ^^ keyword.operator.arrow.haskell
--                                  ^^ keyword.operator.double-colon.haskell
--                                     ^^^^ storage.type.haskell
--                                          ^^^ variable.other.generic-type.haskell
    where
--  ^^^^^ keyword.other.where.haskell
      MkZ fld3 = bar
--    ^^^ 	constant.other.haskell
--        ^^^^   ^^^ - variable.other.generic-type.haskell
