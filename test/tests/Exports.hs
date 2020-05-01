-- SYNTAX TEST "source.haskell" "Exports"

module M 
  ( T(f,C,g)
--  ^ storage.type.haskell
--      ^ constant.other.haskell
--    ^   ^ entity.name.function.haskell
  , S(..)
--  ^ storage.type.haskell
  , (:->)((:>))
--   ^^^ storage.type.haskell
--         ^^ constant.other.haskell
  , (:<>)(C,a,D,E)
--   ^^^ storage.type.haskell
--        ^   ^ ^ constant.other.haskell
--          ^ entity.name.function.haskell
  , A((<>), (:>>))
--  ^ storage.type.haskell
--     ^^    ^^^ constant.other.haskell
  , pattern P
--          ^ constant.other.haskell
  , pattern (:|)
--           ^^ constant.other.haskell
  , type T
--       ^ storage.type.haskell
  , type (:-)
--        ^^ storage.type.haskell
  , type (<+>)
--        ^^^ storage.type.haskell
  )
  where