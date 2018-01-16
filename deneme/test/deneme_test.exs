defmodule DenemeTest do
  use ExUnit.Case
  doctest Deneme

  test "greets the world" do
    assert Deneme.hello() == :world
  end
end
