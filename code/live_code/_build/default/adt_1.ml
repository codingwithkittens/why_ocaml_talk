type direction = | Buy | Sell 

module Order = struct
  type t =
    { id : string
    ; quantity : int
    ; side : direction
    } 
end

module Execution = struct
  type t =
    { id : string
    ; order_id : string
    ; quantity : int 
    }
end

type exchange_message =
  | Order of Order.t
  | Execution of Execution.t

let size_on_exchange current_size message =
  match message with
  | Order o     -> current_size + o.quantity 
  | Execution e -> current_size - e.quantity 

module Cancel = struct
  type t = 
    { id : string
    ; order_id : string
    ; quantity : int
    }
end







