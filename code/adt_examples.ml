
type exchange_message =
  | Order of Order.t
  | Execution of Execution.t

let size_on_exchange current_size mesasge =
  match message with
  | Order o     -> current_size + Order.quantity o
  | Execution e -> current_size - Execution.quantity e

-------------

type exchange_message =
  | Order of Order.t
  | Execution of Execution.t
  | Cancel of Cancel.t

let size_on_exchange current_size mesasge =
  match message with
  | Order o     -> current_size + Order.quantity o
  | Execution e -> current_size - Execution.quantity e
  | Cancel e    -> current_size - Cancel.quantity e
