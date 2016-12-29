defmodule Solution do
    require Integer
    input = String.to_integer(IO.gets(""))

    if Integer.is_odd(input) do
        IO.puts("Weird")
    else
        if input >= 6 and input <= 20 do
            IO.puts("Weird")
        else
            IO.puts("Not Weird")
        end
    end
end
