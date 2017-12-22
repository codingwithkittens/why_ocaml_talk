let main () =
  let total = ref 0 in
  for i = 0 to 10_000_000 - 1 do
    total := (!total + i) mod 19
  done;
  Printf.printf "%d\n" !total

let () = main ()

