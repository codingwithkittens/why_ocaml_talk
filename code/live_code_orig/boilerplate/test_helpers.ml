open Core

let is_bounded
    (type value) 
    (sexp_of_value : value -> Sexp.t)
    field_name value 
    (lower_bound, upper_bound)
  : unit Or_error.t
  =
  if value > upper_bound || value < lower_bound then
    error_s [%message (field_name ^ "out of bounds") (value : value)]
  else
    Ok ()
