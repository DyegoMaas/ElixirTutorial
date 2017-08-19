defmodule KVTest do
  use ExUnit.Case
  doctest KV
  doctest Length

  def xx(input) do
    verifySomething = fn
      {:ok, b} when b >= 5 -> "#{b}"
      {:ok, v} when v <= 3 -> "one, two, #{v}"
      {:ok, _} -> "LA LA LAND"
      {:nok} -> "ERROR"
      {_} -> "NOTHING"
    end
    verifySomething.(input)
  end

  test "recursion test" do
    assert xx({:ok, 5}) == "5"
    assert xx({:ok, 3}) == "one, two, 3"
    assert xx({:ok, 4}) == "LA LA LAND"
    assert xx({:nok}) == "ERROR"
    assert xx({1}) == "NOTHING"
  end

  test "testing one line function" do
    assert Length.one() == 1
  end

  test "recursion with pattern matching" do
    assert Length.of([]) == 0
    assert Length.of([2,3,5,4]) == 4
  end

  test "greets the world" do
    assert KV.hello() == :world
  end
end
