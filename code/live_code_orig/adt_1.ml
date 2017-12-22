
type exchange_message =
  | Order of Order.t
  | Execution of Execution.t

let size_on_exchange current_size mesasge =
  match message with
  | Order o     -> current_size + Order.quantity o
  | Execution e -> current_size - Execution.quantity e
