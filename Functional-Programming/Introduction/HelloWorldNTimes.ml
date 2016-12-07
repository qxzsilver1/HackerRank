(* Enter your code here. Read input from STDIN. Print output to STDOUT *)
let n = int_of_string (input_line stdin);;
let rec hello_worlds i =
    if n = 0 then ""
    else if n <= i then ""
    else "Hello World\n" ^ (hello_worlds (i + 1))
in print_string(hello_worlds 0);;
