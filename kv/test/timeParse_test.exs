defmodule TimeParseTest do
    use ExUnit.Case
    doctest TimeParse

    test "parsing a time in the format 00:00" do
        assert TimeParse.parse("09:12") == {9, 12}
        assert TimeParse.parse("10:12") == {10, 12}
    end

    test "converting hours/minutes tuple to seconds" do
        assert TimeParse.to_seconds({9, 12}) == 33120
    end
end