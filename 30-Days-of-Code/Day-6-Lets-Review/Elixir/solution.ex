defmodule Solution do
    def stringprint(x) do
        st = x |> String.split("", trim: true)
        firstHalf = st |> Enum.take_every(2)
        secondHalf = st |> Enum.drop(1) |> Enum.take_every(2)
        IO.puts "#{firstHalf} #{secondHalf}"
    end
end

n = IO.gets("") |> String.strip |> String.to_integer
m = for _ <- 1..n do
        IO.gets("") |> String.strip
end

#m = IO.stream(:stdio, :line) |> Enum.map(&String.strip/1)
Enum.each(m, &(Solution.stringprint(&1)))
