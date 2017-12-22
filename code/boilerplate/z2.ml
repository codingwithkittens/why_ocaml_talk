open Core
open Test_helpers

type t = 
  { bid_size: int
  ; ask_size: int
  ; bid_edge: float
  ; ask_edge: float
  }

let validate t =
  Or_error.combine_errors_unit
    [ is_bounded Int.sexp_of_t   "bid_size" t.bid_size (0, 1000)
    ; is_bounded Int.sexp_of_t   "ask_size" t.ask_size (0, 1000)
    ; is_bounded Float.sexp_of_t "bid_edge" t.bid_edge (0., 1.0)
    ; is_bounded Float.sexp_of_t "ask_edge" t.bid_edge (0., 1.0)
    ]
