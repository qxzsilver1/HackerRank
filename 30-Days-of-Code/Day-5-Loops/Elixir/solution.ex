defmodule Solution do
    {n, _} = Integer.parse(IO.gets(""), 10)
    for i <- 1..10, do: IO.puts "#{n} x #{i} = #{n*i}"
end
