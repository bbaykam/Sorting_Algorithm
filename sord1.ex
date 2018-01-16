arr = [2, 5, 11, 1, 7, 3, 9, 28, 7, 3, 13]

# Sord list log(n)
defmodule MySord do
  def separates(integer) do
    mid = Avg(integer)
    if Enum.any?(integer, fn(x) -> x != mid end) do
      Enum.group_by(integer, fn(x) -> x > mid end
        |> Map.values
        |> loop
    end
  end

  def loop(listt) do
    Enum.each(listt, fn(x) -> MySord.separates(x) end)
  end
end

MySord.separates(arr) |> List.flatten |> IO.puts Kernel.inspect
