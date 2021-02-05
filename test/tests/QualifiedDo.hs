-- SYNTAX TEST "source.haskell" "QualifiedDo"

{-# LANGUAGE QualifiedDo #-}
--           ^^^^^^^^^^^ 	keyword.other.preprocessor.extension.haskell

f :: IO ()
f = do
--  ^^ keyword.control.do.haskell
  x <- runMAC $

    MAC.mdo
--  ^^^^ entity.name.namespace.haskell
--      ^^^ keyword.control.mdo.haskell
      d <- label "y"
      box $

        L.do
--      ^^ entity.name.namespace.haskell
--        ^^ keyword.control.do.haskell
          r <- L.f d
          L.g r
          L.return r

      MAC.return d

  print x
