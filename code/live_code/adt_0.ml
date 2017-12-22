open Core
open Float.O

type shape = 
  | Triangle of { base : float; height : float } 
  | Circle of { radius : float }

let area shape =
  match shape with
  | Triangle {base; height}  -> base * height * 0.5
  | Circle {radius} -> Float.pi * radius * radius