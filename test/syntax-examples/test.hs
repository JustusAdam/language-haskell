{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE RecursiveDo #-}

module Main 
    (module M
    , M
    ) where

-- Comments in export lists

module M
    -- ( f
    -- where
    where


module M
    ( f
    -- g
    ) where

    class Foo x where
        foo :: Foo

    myFoo :: Foo
    myFoo = foo


    deriving instance SomeClass => Eq a
    deriving instance Ord a => Ord (Expr a)

class Foo x where
    myFoo :: Foo


myFoo :: Foo
myFoo = foo


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

-- Ticks in type constructors

type family Ticked' x y = r where
    Ticked' '(a,b) = '(b,c)

-- Simple data declarations

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
    { let thing = 5>
    ; arg <- doSomething 5
    ; let thing = 5
    ; return 8
    }

-- Do non-ascii character highlight properly?

unicöde :: String -> [Char]
unicöde = undefined

-- Tests the string literal in the deprecation pragma, should be the same as other string literals.
{-# DEPRECATED testFunction "Test string" #-}

-- Case insensitive pragmas

{-# inline myFunction #-}
{-# iNlInE #-}
{-# deprecated foo "Case insensitive pragmas" #-}
    

-- Nested comments

{- {- -} -}

-- Custom type operators

data (:->)
data (:=>) a b c = D

f :: a :-> b -> c :=> e

-- Empty Types
    
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

-- Proper record syntax
-- These three should all be coloured the same way

data Data = Data { foo :: Int, bar :: Int }
data Data = Data { 
    foo :: Int, bar :: Int 
  }
data Data = Data { 
    foo :: Int, 
    bar :: Int
    }
data Data = Data { 
      foo :: Int
    , bar :: Int
    }

-- GADT's

data Expr a where
    I   :: Int  -> Expr Int
    B   :: Bool -> Expr Bool
    Add :: Expr Int 
        -> Expr Int -> Expr Int
    Mul :: Expr Int 
        -> Expr Int -> Expr Int
    Eq  :: Eq a => 
        Expr a -> Expr a -> Expr Bool

-- Inline data declarations

data A = A (Some Type) | B Int String | C Bool

-- Forall in existential types 

data Exts = forall var . Class var => Exts var

data Exts where 
    F :: forall var . Class var => Exts var

-- Kind signatures

data D (a :: Kind) (b :: k -> [Type]) = D
data D (a :: Kind) (b :: k -> [Type]) where

data D :: k -> [Type] where

-- GADT with single case

data D a where D :: Int -> D String

-- Type level integers

function :: A 24 -> B "symbol"

-- foreign imports

foreign import ccall "string.h strlen"  
   cstrlen :: Ptr CChar -> IO CSize 

foreign export cplusplus  "string.h strlen"  
foreign import dotnet "string.h strlen"  

foreign import ccall "errno.h &errno" errno :: Ptr CInt 
foreign import ccall "&" bar :: Ptr CInt 
foreign import ccall foo :: CInt 

-- Also should work for indented modules, hence here again with indent

    foreign import jvm "string.h strlen"  
        cstrlen :: Ptr CChar -> IO CSize 
    foreign import stdcall "string.h strlen"  

foreign export ccall "addInt"   (+) :: Int   -> Int   -> Int  
foreign export ccall "addFloat" (+) :: Float -> Float -> Float 

-- The identifier 'signature'

f = do
    let signature = Some value
    return 0
  where
    signature = more testing

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

-- Deriving via

deriving via (A b c) instance C a

data B = B
    deriving A via B


-- Pattern synonyms

pattern A :: Type
pattern (A b) = c
