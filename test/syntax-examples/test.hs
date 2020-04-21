{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE RecursiveDo #-}

module Main 
    (module M
    , M
    ) where

import Data.Version as V (Version(..))
import Control.Monad.State
import qualified Data.Text as T

data Something a b

data MyState a b = MyState

data MyData a 
    = Record {} 
    | Algebraic 
        Int -- this should have the same color as other types
        a 
    deriving (Show, Eq)

newtype StateMonad b c r = StateMonad (StateT (MyState (Something b c) b) IO r)
    deriving (MonadState (MyState (Something b c) b), MonadIO, Monad, Functor, Applicative)

data T2 
    = Constr1 Int
    | Record2 {
        field1 :: Int,
        field2 :: Int
    }
    deriving Show

data T3 = T3 
    { f1 :: Int
    , f2 :: Int 
    }

type MyType = MyData String

-- Multi-line type aliases

type T a = 
    Constr 
    a 
    Int

-- Multi line type alias with infix constructors

type UserApi = "users" :> Body '[JSON]
                       :> Post '[JSON]
        :<|>  "users"  :> Capture "userid"
                       :> ReqBody '[JSON]

class Empty

abind :: Type

instance Cls

afunc :: Type

class WithConstraint =>
    LongName
    where

afunc :: Type 

instance WithConstraint =>
    LongName
    where

someFunc :: IO Int
someFunc = do
    another argument
    arg :: Type
    let x = 6 :: Int
    a `Infix.Operator.func` b
    a `func` b
    a :: Bool <- something
    if a then b :: Int else g
    case (a :: Bool) of
        Nothing -> b
    return 6
  where 
    ident = 4
    ident' = 9


data GADT a  where
    Constr :: A -> B -> GADT a

recDo = mdo
    a <- b
    return b

explicitRecDo = do
    a <- rec { c <- d }
    return a

anotherFunc :: MyData -> Int
anotherFunc arg = 
    let something = "hello" :: String
    in case a :: B of
        Just _ -> g

  where 
    expression argument = arg + 7

anotherFunc arg = do 
    { let thing = 5
    ; arg <- doSomething 5
    ; let thing = 5
    ; return 8
    }

-- Tests the string literal in the deprecation pragma, should be the same as other string literals.
{-# DEPRECATED "Test string" #-}
    
data Handler a b c


astring = "\^A \^@ \^_"
anotherstring = "^\\"

-- funky keyword identifiers with prime

let' = 5
class' = 4
module' = 6
instance' = 7
where' = 0
rec' = 6
import' = 5
if' = 6
else' = 7
then' = 0


class (AClass a, AnotherClass b) => Manager manager where
    -- | Type of the session state inside the manager. In most cases this will
    -- either be any type or a type constrained by some serialisation typeclass like
    --
    -- @
    --  instance Serialize a => Manager (WritesToFileManager a) where
    --      type Manages (WritesToFileManager a) = a
    -- @
    type Manages manager
    -- | Obtain the full session state for the current client.
    managerGetSession :: Handler v manager (Manages manager)
    managerGetSession = managerModifySession id
    -- | Replace the state of the current sessio with the provided one
    managerSetSession :: Manages manager -> Handler v manager ()
    managerSetSession = managerModifySession . const >=> const (return ())

    -- | Indicate to the manager that cached mutations on state should be persisted.
    --
    -- This method is entirely optional, however it is recommended
    -- for managers where mutating the persistent state is expensive to
    -- cache mutations in the manager data structure and persist them once commit
    -- is called.
    managerCommit :: Handler v manager ()
    managerCommit = return ()

    -- | Again optional. Users can use this method to indicate to the manager that
    -- the session should be established (cookie read for instance) and the state
    -- cached into the manager data structure.
    managerLoad :: Handler v manager ()
    managerLoad = return ()

    -- | Applies a function to the (cached) session state
    managerModifySession :: (Manages manager -> Manages manager) -> Handler v manager (Manages manager)
    managerModifySession f = managerGetSession >>= \sess -> managerSetSession (f sess) >> return sess

    {-# MINIMAL managerGetSession, managerSetSession | managerModifySession #-}
