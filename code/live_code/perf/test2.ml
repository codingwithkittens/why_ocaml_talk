let main () =
  let rec loop i total =
    if i >= 10_000_000 then total
    else loop (i + 1) ((total + i) mod 19)
  in
  Printf.printf "%d\n" (loop 0 0)

let () = main ()

