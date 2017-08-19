defmodule AudiobookTest do
    use ExUnit.Case
    doctest Audiobook

    test "having read/heard nothing of the audiobook" do
        assert Audiobook.get_completed_percentual(0, 9000) == 0
    end

    test "having read/heard 10% of the audiobook" do
        assert Audiobook.get_completed_percentual(1000, 9000) == 10
    end

    test "having read/heard 100% of the audiobook" do
        assert Audiobook.get_completed_percentual(10000, 0) == 100
    end

    def get_completed_percentual(completed, remaining) do
        secondsCompleted = TimeParse.parse(completed) |> TimeParse.to_seconds()
        secondsRemaining = TimeParse.parse(remaining) |> TimeParse.to_seconds()
        Audiobook.get_completed_percentual(secondsCompleted, secondsRemaining)
    end

    test "having read/heard the audiobook for some time inputing string" do
        assert get_completed_percentual("00:00", "9:00") == 0
        assert get_completed_percentual("1:00", "9:00") == 10
        assert get_completed_percentual("09:00", "00:00") == 100
    end
end
  