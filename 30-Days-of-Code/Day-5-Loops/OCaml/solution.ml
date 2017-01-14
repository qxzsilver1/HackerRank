let num = int_of_string (input_line stdin);;

for i = 1 to 10 do
    let result = num * i in Printf.printf "%d x %d = %d\n" num i result
done;;
