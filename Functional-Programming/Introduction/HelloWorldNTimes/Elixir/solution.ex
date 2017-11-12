defmodule Solution do

  def num do
    IO.gets("")
    |> Integer.parse
    |> elem(0)
  end

end

n = Solution.num()

"Hello World\n"
|> String.duplicate(n)
|> IO.puts
