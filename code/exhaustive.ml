open Common

type exchange_message = | Execution  of Execution.t
                        | Reject     of Reject.t
                        | Out        of Out.t

let position_change m =
  match m with
  | Execution e ->
    let dir = Execution.dir e in
    Dir.sign dir * Execution.quantity e
  | _ -> 0

