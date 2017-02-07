let rec read_lines () =
    try let line = read_line () in
        int_of_string (line) :: read_lines()
    with
        End_of_file -> []

let rec replicate n x arr = if n > 0 then replicate (n-1) x (x::arr) else arr;;

let rec f n arr = match arr with (*Complete this function*)
    | [] -> []
    | head::tail -> (replicate n head [])@(f n tail);;

let () =
    let n::arr = read_lines() in
    let ans = f n arr in
    List.iter (fun x -> print_int x; print_newline ()) ans;;
