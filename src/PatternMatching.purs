module PatternMatching where

import Prelude

import Data.Semiring
import Effect.Console

-- Pattern matching
patternMatch true = "YES!"
patternMatch false = "NO!"

-- case syntax, can be used when inside of a function body
caseSyntax a = case a of
  true -> "JA!"
  false -> "NEIN!"

fib :: Partial => Int -> Int
fib 0 = 1
fib 1 = 1
fib n | n >= 2 = fib (n - 1) + fib (n - 2)