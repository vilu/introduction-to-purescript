module Polymorphism where

import Data.Array
import Data.Maybe
import Data.Semigroup

-- Parametric polymorphism
rev :: forall a. Array a -> Array a
rev [] = []
rev arr = go [] arr 
  where
    go acc arr = case uncons arr of
      Just { head: a, tail: as } -> go (cons a acc) as
      Nothing -> acc

-- Ad-hoc polymorphism (through type classes)
class Summable a where
  sum :: a -> a -> a

instance summableString :: Summable String where
  sum x y = x <> y

instance summableArray :: Summable (Array a) where
  sum a1 a2 = a1 <> a2

-- Compose type classes, see Control.Monad

-- Row type polymorphism
person = { 
  name: "John"
, surname: "Doe"
}

partyPerson = { 
  name: "John"
, surname: "Travolta"
, parties: "24/7"
}

-- Will ONLY accept variable with exactly those fields
showName :: { name :: String , surname :: String } -> String
showName p = p.name <> " " <> p.surname

-- Will accept variable with at least those fields
showNamePolymorphic :: forall r. { name :: String , surname :: String | r } -> String -- Type declaration is optional. Inference would show this.
showNamePolymorphic p = p.name <> " " <> p.surname