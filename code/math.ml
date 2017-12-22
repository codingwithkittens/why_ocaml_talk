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


-------------------------------------
let rec reduce xs ~f ~init =
  match xs with
  | Empty -> init
  | Element {data; rest} -> f data (reduce rest ~f ~init)

let add x y = x + y
let mult x y = x * y

let add_list xs = reduce xs ~f:add ~init:0
let mult_list xs = reduce xs ~f:mult ~init:1
