-- SYNTAX TEST "source.haskell" "Multiline deriving"


    deriving stock instance
--  ^^^^^^^^ keyword.other.deriving.haskell
--           ^^^^^ keyword.other.deriving.strategy.stock.haskell
--                 ^^^^^^^^ keyword.other.instance.haskell
           ( A b c
--           ^ storage.type.haskell
           , D e f 
--             ^ ^ variable.other.generic-type.haskell
           )
        => C b c e f
--      ^^ keyword.operator.big-arrow.haskell
--         ^ storage.type.haskell
--           ^ ^ ^ ^ variable.other.generic-type.haskell

    deriving anyclass
--  ^^^^^^^^ keyword.other.deriving.haskell
--           ^^^^^^^^ keyword.other.deriving.strategy.anyclass.haskell
      instance
--    ^^^^^^^^ keyword.other.instance.haskell
           ( A b c
--           ^ storage.type.haskell
           , D e f 
--             ^ ^ variable.other.generic-type.haskell
           )
        => C b c e f
--      ^^ keyword.operator.big-arrow.haskell
--         ^ storage.type.haskell
--           ^ ^ ^ ^ variable.other.generic-type.haskell


    deriving
--  ^^^^^^^^ keyword.other.deriving.haskell
      via X y z
--    ^^^ keyword.other.deriving.strategy.via.haskell
--        ^ storage.type.haskell
--          ^ ^ variable.other.generic-type.haskell
      instance
--    ^^^^^^^^ keyword.other.instance.haskell
           ( A b c
--           ^ storage.type.haskell
           , D e f 
--             ^ ^ variable.other.generic-type.haskell
           )
        => C b c e f
--      ^^ keyword.operator.big-arrow.haskell
--         ^ storage.type.haskell
--           ^ ^ ^ ^ variable.other.generic-type.haskell


    deriving
--  ^^^^^^^^ keyword.other.deriving.haskell
      via ( X y z )
--    ^^^ keyword.other.deriving.strategy.via.haskell
      instance
--    ^^^^^^^^ keyword.other.instance.haskell
           ( A b c
--           ^ storage.type.haskell
           , D e f 
--             ^ ^ variable.other.generic-type.haskell
           )
        => C b c e f
--      ^^ keyword.operator.big-arrow.haskell
--         ^ storage.type.haskell
--           ^ ^ ^ ^ variable.other.generic-type.haskell


    data AB = AB deriving stock Eq
--               ^^^^^^^^ keyword.other.deriving.haskell
--                        ^^^^^ keyword.other.deriving.strategy.stock.haskell
--                              ^^ storage.type.haskell
                 deriving
--               ^^^^^^^^ keyword.other.deriving.haskell
                   ( C x y z )
--                   ^ storage.type.haskell
--                     ^ ^ ^ variable.other.generic-type.haskell
                   via
--                 ^^^ keyword.other.deriving.strategy.via.haskell
                     XY
--                   ^^ storage.type.haskell
