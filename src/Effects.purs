module Effects where 

import Prelude

import Data.JSDate
import Effect

unixTimeNow :: Effect String 
unixTimeNow = do
  n <- now
  pure $ show $ getTime n

timeNow :: Effect String 
timeNow = do
  n <- now
  pure $ show n