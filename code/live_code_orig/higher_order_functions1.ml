type int_list =
  | Empty
  | Element of { data: int; rest : int_list }

let rec add_list xs =
  match xs with
  | Empty -> 0
  | Element { data; rest } -> data + add_list rest

let rec mult_list xs =
  match xs with
  | Empty -> 1
  | Element { data; rest } -> data * mult_list rest
