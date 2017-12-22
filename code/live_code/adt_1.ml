type direction = | Buy | Sell 

type order =
  { id : string
  ; quantity : int
  ; side : direction
  } 

type execution =
  { id : string
  ; order_id : string
  ; quantity : int 
  }

type exchange_message =
  | Order of order
  | Execution of execution

let size_on_exchange current_size message =
  match message with
  | Order o     -> current_size + o.quantity 
  | Execution e -> current_size - e.quantity 








type cancel = 
  { id : string
  ; order_id : string
  ; quantity : int
  }










