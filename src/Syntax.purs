module Syntax where 

import Prelude

import Data.Semiring
import Effect.Console

-- Whitespace can matter. General rule: Multiline must be indented beyond the column on which they started. 
-- Invalid
-- fun a = 
-- a + a

-- valid
-- fun :: Int -> Int -- Optional
fun a = 
  a + a

ifThenElse x = if x < 10 then "Low" else "High"

-- Function declaration 
curried :: Int -> Int -> Int
curried a b = a * b

-- printInvalid = log show 1 + 1 -- this would mean that log is given "show" as a parameter which is a function from a -> String. What log really expects is a String.
printValid1 = log (show $ 1 + 1)
printValid2 = log $ show (1 + 1)
printValid3 = log $ show $ 1 + 1

-- Eta conversions is about adding or removing the abstraction over a function
etaReduction :: Int -> Int -> Int
etaReduction = (*)
etaAbstraction :: Int -> Int -> Int
etaAbstraction x y = x * y 

-- Lambda syntax allows you to declare anonymous functions
lambdaSyntax :: Int -> Int
lambdaSyntax = \i -> i * i

functionComposition :: Int -> Int
functionComposition = lambdaSyntax <<< fun -- Check infixr infixl
-- functionComposition = lambdaSyntax >>> fun

-- Let and where
whereFunction :: Int -> Int
whereFunction a = sum a
  where
    sum x = x + x

letFunction :: Int -> Int
letFunction a = 
  let
    sum x = x + x
  in
    sum a
