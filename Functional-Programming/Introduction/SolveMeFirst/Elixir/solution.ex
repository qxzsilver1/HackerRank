defmodule Solution do
    defp solveMeFirst(a, b) do
        a + b
    end
    
    def convert_user_input(string_input) do
        string_input |> String.strip |> String.to_integer
    end
    
    def main do
        a = convert_user_input IO.gets("")
        b = convert_user_input IO.gets("")
        IO.puts solveMeFirst(a, b)
    end
end

Solution.main

