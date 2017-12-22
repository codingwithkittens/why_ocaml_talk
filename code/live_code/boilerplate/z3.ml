open Core
open Test_helpers2

type t = 
  { bid_size: int
  ; ask_size: int
  ; bid_edge: float
  ; ask_edge: float
  }
[@@deriving fields]

let validate t =
  Or_error.combine_errors_unit
    [ is_bounded (module Int)   t Fields.bid_size (0, 1000)
    ; is_bounded (module Int)   t Fields.ask_size (0, 1000)
    ; is_bounded (module Float) t Fields.bid_edge (0., 1.0)
    ; is_bounded (module Float) t Fields.ask_edge (0., 1.0)
    ]
