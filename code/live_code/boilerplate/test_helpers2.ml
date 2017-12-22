open Core

module type Sexpable_and_comparable = sig
  type t
  include Comparable with type t := t
  include Sexpable with type t := t
end

let is_bounded
      (type a)
      (module M : Sexpable_and_comparable with type t = a)
      t field (lower_bound,upper_bound)
  : unit Or_error.t
  =
  let value = Field.get field t in
  let field = Field.name field in
  if M.(value <= upper_bound && value >= lower_bound)
  then Ok ()
  else error_s [%message "out of bounds"
        (field : string) (value : M.t) (upper_bound : M.t) (lower_bound : M.t)]
