-- SYNTAX TEST "source.haskell" "Indentation in imports"

    import
--  ^^^^^^ keyword.other.import.haskell    
            qualified
--          ^^^^^^^^^ keyword.other.qualified.haskell
    
    
        I
--      ^ entity.name.namespace.haskell
    
          as
--        ^^ keyword.other.as.haskell
    
      J
--    ^ entity.name.namespace.haskell
              hiding
--            ^^^^^^ keyword.other.hiding.haskell
          (
      f, A
--    ^ entity.name.function.haskell
--       ^ storage.type.haskell
         , B, g, (:<),
--         ^ storage.type.haskell
--            ^ entity.name.function.haskell
--                ^^ storage.type.operator.haskell
          (>>>)
--         ^^^ entity.name.function.infix.haskell
      )
