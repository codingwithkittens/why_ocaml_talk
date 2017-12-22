type 'a expr = | And  of 'a expr * 'a expr 
               | Or   of 'a expr * 'a expr 
               | Not  of 'a expr
               | If of 'a expr * 'a expr * 'a expr
               | Base of 'a  

(* Example: {[
     (Or (Base (sent_to "rollouts@"),
          Base (subject_contains "rollout")))
]}*)

let rec eval eval_base expr  = 
  let  eval' x = eval eval_base x in 
  match expr with 
  | Base base  -> eval_base base 
  | And  (x,y) -> eval' x && eval' y  
  | Or   (x,y) -> eval' x || eval' y
  | If (c,t,e) -> if eval' c then eval' t else eval' e
  | Not  x     -> not (eval' x)
