-- SYNTAX TEST "source.haskell" "Exports"

module M 
  ( T(f,C,g)
--  ^ storage.type.haskell
--    ^   ^ entity.name.function.haskell
  , S((:<..<), .. )
--  ^ storage.type.haskell
--       ^^ - variable.other.member.wildcard.haskell
--     ^^^^^ constant.other.operator.prefix.haskell
--             ^^ variable.other.member.wildcard.haskell
  , (:->)((:>))
--   ^^^ storage.type.operator.haskell
--         ^^ constant.other.operator.prefix.haskell
  , (:<>)(C,a,D,E)
--   ^^^ storage.type.operator.haskell
  , A((<>), (:>>))
--  ^ storage.type.haskell
--           ^^^ constant.other.operator.prefix.haskell
  , f
--  ^  entity.name.function.haskell
  , pattern P
--  ^^^^^^^ keyword.other.pattern.haskell
--          ^ constant.other.haskell
  , pattern (:|)
--  ^^^^^^^ keyword.other.pattern.haskell
--           ^^ constant.other.operator.prefix.haskell
  , pattern -- Q,)
--  ^^^^^^^ keyword.other.pattern.haskell
      Q
--    ^ constant.other.haskell
  , f, T
--  ^ entity.name.function.haskell
--     ^ storage.type.haskell
  , type T
--  ^^^^ keyword.other.type.haskell
--       ^ storage.type.haskell
  , type (:-)
--  ^^^^ keyword.other.type.haskell
--        ^^ storage.type.operator.haskell
  , type (<+>)
--  ^^^^ keyword.other.type.haskell
--        ^^^ storage.type.operator.haskell
  , type {- T -}
--  ^^^^ keyword.other.type.haskell
      (<->)
--     ^^^ storage.type.operator.haskell
  , type (Qualified.<->)
--  ^^^^ keyword.other.type.haskell
--        ^^^^^^^^^^ entity.name.namespace.haskell
--                  ^^^ storage.type.operator.haskell
  , type Qualified.T
--  ^^^^ keyword.other.type.haskell
--       ^^^^^^^^^^ entity.name.namespace.haskell
--                 ^ storage.type.haskell
  )
  where
