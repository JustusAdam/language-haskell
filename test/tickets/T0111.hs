-- SYNTAX TEST "source.haskell" "Multi line type aliases"

type T a = 
    Constr
--  ^^^^^^ storage.type.haskell
    a
--  ^ variable.other.generic-type.haskell
    Int
--  ^^^ storage.type.haskell

-- Multi line type alias with infix constructors

type UserApi = "users" :> Body '[JSON]
--                     ^^ storage.type.operator.infix.haskell
                       :> Post '[JSON]
--                        ^^^^ storage.type.haskell
          :<|> "users" :> Capture "userid"
--        ^^^^         ^^ storage.type.operator.infix.haskell
--                                ^^^^^^^^ string.quoted.double.haskell
                       :> ReqBody '[JSON]
--                        ^^^^^^^ storage.type.haskell
