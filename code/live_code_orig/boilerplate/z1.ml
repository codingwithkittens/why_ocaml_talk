open! Core

type params = 
  { bid_size: int
  ; ask_size: int
  ; bid_edge: float
  ; ask_edge: float
  }

let validate_params p =
  Or_error.combine_errors_unit
    [ if p.bid_size > 1000 || p.bid_size < 0 then 
        error_s [%message "bid_size out of bounds" (p.bid_size : int)]
      else Ok ()
    ; if p.ask_size > 1000 || p.ask_size < 0 then
        error_s [%message "ask_size out of bounds" (p.ask_size : int)]
      else Ok ()
    ; if p.bid_edge > 1.0 || p.bid_edge < 0.0 then
        error_s [%message "bid_edge out of bounds" (p.bid_edge : float)]
      else Ok ()
    ; if p.ask_edge > 1.0 || p.ask_edge < 0.0 then
        error_s [%message "ask_edge out of bounds" (p.ask_edge : float)]
      else Ok ()
    ]
