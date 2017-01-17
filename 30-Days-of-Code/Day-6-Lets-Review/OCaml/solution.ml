let firstHalf_even s =
  let rec exp i l = match i with
    | _ when i < 0 -> l
    | _ when i mod 2 = 0 -> exp (i - 1) (s.[i] :: l)
    | _ -> exp (i - 1) l
  in exp (String.length s - 1) [] in
let secondHalf_odd s =
  let rec exp i l = match i with
    | _ when i < 0 -> l
    | _ when i mod 2 = 1 -> exp (i - 1) (s.[i] :: l)
    | _ -> exp (i - 1) l
  in exp (String.length s - 1) [] in
let split_string s = 
  let even_string = firstHalf_even s in
  let () = List.iter (Printf.printf "%c") even_string in
  let () = Printf.printf " " in
  let odd_string = secondHalf_odd s in
  let () = List.iter (Printf.printf "%c") odd_string in
  Printf.printf "\n"
in
let rec print_split_strings num_left =
  if (num_left = 0) then ()
  else begin
    let () = split_string (read_line ()) in
    print_split_strings (num_left - 1)
  end
in print_split_strings (read_int ())
