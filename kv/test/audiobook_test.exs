defmodule AudiobookTest do
    use ExUnit.Case
    doctest Audiobook

    test "having read/heard 10% of the audiobook" do
        assert Audiobook.getCompletedPercentual(1000, 9000) == 10
    end

    test "having read/heard 10% of the audiobook with input string" do
        assert Audiobook.getCompletedPercentual("1:00", "9:00") == 10
    end
end
  