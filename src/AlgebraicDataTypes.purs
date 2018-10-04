module AlgebraicDataTypes where 

import Prelude
import Data.Semiring

data Direction = North | East | South | West

printDirection :: Direction -> String
printDirection North = "n"
printDirection East = "e"
printDirection West = "w"
printDirection South = "s"

data Shape
  = Circle Point Number
  | Rectangle Point Number Number | Line Point Point
  | Text Point String

data Point = Point { 
    x :: Number
  , y :: Number
  }


showPoint :: Point -> String 
showPoint (Point { x: x, y: y }) = "(" <> show x <> ", " <> show y <> ")"

-- showPoint (Point { x: 1.0, y: 5.0 } )

showShape :: Shape -> String 
showShape (Circle c r) = "Circle at point: " <> showPoint c <> " with radius: " <> show r
showShape (Rectangle c w h) = "Rectangle at point: " <> showPoint c <> " with width: " <> show w <> " with height: " <> show h
showShape (Line start end) = "Line from point: " <> showPoint start <> " to point: " <> showPoint start
showShape (Text p text) = "Text: " <> text <> " at point: " <> showPoint p
