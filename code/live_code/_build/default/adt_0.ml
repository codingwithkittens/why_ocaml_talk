open Core
open Float.O

type shape = 
  | Triangle of float * float 
  | Rectangle of float * float

let area shape =
  match shape with
  | Triangle (base, height)  -> base * height * 0.5
  | Rectangle (base, height) -> base * height