module Syntax where 

import Prelude

import Data.Semiring

-- Whitespace can matter. General rule: Multiline must be indented beyond the column on which they started. 
-- Invalid
-- fun a = 
-- a + a

-- valid
fun :: Int -> Int
fun a = 
  a + a

-- Function declaration 
curried :: Int -> Int -> Int
curried a b = a * b

-- Pattern matching
patternMatch true = "YES!"
patternMatch false = "NO!"

-- case syntax, can be used when inside of a function body
caseSyntax a = case a of
  true -> "JA!"
  false -> "NEIN!"

-- Eta conversions is about adding or removing the abstraction over a function
etaReduction :: Int -> Int -> Int
etaReduction = (*)
etaAbstraction :: Int -> Int -> Int
etaAbstraction x y = x * y 

-- Lambda syntax allows you to declare anonymous functions
lambdaSyntax :: Int -> Int
lambdaSyntax = \i -> i * i

functionComposition :: Int -> Int
functionComposition = lambdaSyntax <<< fun
-- functionComposition = lambdaSyntax >>> fun

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

