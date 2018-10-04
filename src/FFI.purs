module FFI (concatArrays) where 

import Prelude

import Data.Array
import Effect.Console


foreign import concForeign :: forall a. Array a -> Array a -> Array a


concatArrays :: forall a. Array a -> Array a -> Array a
concatArrays a1 a2 = a1 `concForeign` a2