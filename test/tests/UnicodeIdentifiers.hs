-- SYNTAX TEST "source.haskell" "Unicode \p{Lo}\p{Lo} in identifiers"


-- varid start: \p{Lo}
価格 :: Int
-- <-- entity.name.function.haskell
-- <---------- meta.function.type-declaration.haskell
-- <---------- - invalid
-- ^^ keyword.operator.double-colon.haskell

-- varid start: \p{Lm}
ʰello :: String
-- <----- entity.name.function.haskell
-- <--------------- meta.function.type-declaration.haskell
-- <--------------- - invalid
--    ^^ keyword.operator.double-colon.haskell

-- varid continuation: \p{Lo}
val価 :: Int
-- <---- entity.name.function.haskell
--   ^^ keyword.operator.double-colon.haskell

-- varid continuation: \p{Lm}
valʰ :: Int
-- <---- entity.name.function.haskell
--   ^^ keyword.operator.double-colon.haskell

-- type variable continuation: \p{Lo}
type T xあ = xあ -> xあ
--     ^^   ^^    ^^ variable.other.generic-type.haskell
--        ^ keyword.operator.eq.haskell
--             ^^ keyword.operator.arrow.haskell

-- type variable continuation: \p{Lm}
type T xʰ = xʰ -> xʰ
--     ^^   ^^    ^^ variable.other.generic-type.haskell
--        ^ keyword.operator.eq.haskell
--             ^^ keyword.operator.arrow.haskell

let
-- constructor continuation: \p{Lo}
  x = Fooあ
--    ^^^^ constant.other.haskell
--  ^ keyword.operator.eq.haskell


-- constructor continuation: \p{Lm}
  x = Fooʰ
--    ^^^^ constant.other.haskell
--  ^ keyword.operator.eq.haskell

-- backtick infix with \p{Lo} start (variable, not constructor)
  a `価格` b
--   ^^ keyword.operator.function.infix.haskell
--   ^^ - constant.other.haskell
--  ^  ^ punctuation.backtick.haskell

-- backtick infix with \p{Lo} in continuation (constructor)
  a `Fooあ` b
--  ^^^^^^ keyword.operator.function.infix.haskell
--   ^^^^ constant.other.haskell
--  ^    ^ punctuation.backtick.haskell

-- record field with \p{Lo} start
  data R = R { 価格 :: Int }
--             ^^ variable.other.member.definition.haskell
--       ^ keyword.operator.eq.haskell
--                ^^ keyword.operator.double-colon.haskell

-- record field with \p{Lo} in continuation
  data R = R { fooあ :: Int }
--             ^^^^ variable.other.member.definition.haskell
--       ^ keyword.operator.eq.haskell
--                  ^^ keyword.operator.double-colon.haskell

-- overloaded label with \p{Lo}
  test #価格
--     ^ keyword.operator.prefix.hash.haskell
--     ^^^^ entity.name.label.haskell

-- overloaded label with \p{Lo} in continuation
  test #foo価格
--     ^ keyword.operator.prefix.hash.haskell
--     ^^^^^^^^ entity.name.label.haskell

-- postfix # after \p{Lo} identifier (MagicHash boundary)
  価#
-- ^ keyword.operator.postfix.hash.haskell

-- postfix # after \p{Lo} in continuation
  foo価#
--    ^ keyword.operator.postfix.hash.haskell

-- tight @ after \p{Lo} identifier (type application boundary)
  f 価@Int
--   ^ keyword.operator.infix.tight.at.haskell

-- tight @ after \p{Lo} in continuation
  f fooあ@Int
--      ^ keyword.operator.infix.tight.at.haskell

-- prefix operator before \p{Lo} identifier
  f = $価格
--    ^ keyword.operator.prefix.dollar.haskell

-- char literal not triggered after \p{Lo} identifier with prime
    価' :: Int
--  ^^ entity.name.function.haskell
--  ^^ - invalid
--     ^^ keyword.operator.double-colon.haskell

-- FFI with \p{Lo} varid
  foreign import ccall "f" 価格 :: IO ()
--                         ^^ entity.name.function.haskell
--                            ^^ keyword.operator.double-colon.haskell
