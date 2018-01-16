arr = [2, 5, 11, 1, 7, 3, 9, 28, 7, 3, 13]

# Sord list log(n)
defmodule My_sord do
  def separates(integer) do

  mid = fn(integer) -> Enum.sum(integer) / Enum.count(integer) end
    if Enum.any?(integer, fn(x) -> (x) != mid end) do
      Enum.group_by(integer, fn(x) -> x > mid end)
        |> Map.value(integer)
        |> print(integer)
    else
    end
  end

  def print(integer) do
    IO.puts Kernel.inspect(integer)
  end
end



My_sord.separetes(arr)
