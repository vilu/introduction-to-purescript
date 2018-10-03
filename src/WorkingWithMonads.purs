module WorkingWithMonads where

import Prelude 
import Data.Maybe
import Control.Monad

maybeSum :: Maybe Number -> Maybe Number -> Maybe Number
maybeSum a b = do
  n <- a
  m <- b
  let result = n + m
  pure result

-- Same thing! >>= is flatmap 
maybeSum':: Maybe Number -> Maybe Number -> Maybe Number
maybeSum' ma mb = ma >>= (\a -> mb >>= (\b -> Just (a + b)))