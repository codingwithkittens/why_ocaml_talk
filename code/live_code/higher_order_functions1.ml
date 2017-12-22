type int_list =
  | Empty
  | Elt of { data: int; rest : int_list }

let example_list =
  Elt 
    { data = 1
    ; rest = 
        Elt 
          { data = 2
          ; rest = 
              Elt 
                { data = 3
                ; rest = Empty } } }


let rec add_list xs =
  match xs with
  | Empty -> 0
  | Element { data; rest } -> data + add_list rest

let rec mult_list xs =
  match xs with
  | Empty -> 1
  | Element { data; rest } -> data * mult_list rest