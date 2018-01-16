arr = ["snow", "winter", "ice", "Slippery", "salted roads", "white trees", "", 7, ["6", 88, "sahi"], 4.2]

#Reject if a string starts with s or S
defmodule S do

  def starts_with_s(word) do
    cond do
        is_binary(word)   -> String.starts_with?(word, ["s", "S"])
        is_list(word)     -> loop_and_eliminate(word)
        true              -> false
    end
  end


  def loop_and_eliminate(words) do
    Enum.reject(words, fn(x) -> S.starts_with_s(x) end) |> print
  end

  def print(word) do
    IO.puts Kernel.inspect(word)
  end
end

S.loop_and_eliminate(arr)
