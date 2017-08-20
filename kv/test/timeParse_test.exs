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

    test "case" do
        lala = {1, "João"}
        x = case lala do
            {1, valor} -> valor
            _ -> "Error"
        end
        assert x == "João"
    end

    test "cond" do
        nome = "Guilherme"
        result = cond do
            nome == "Guilherme" ->
                "é ele"
            nome == "Dyego" ->
                "é o outro"
            true ->
                "desconhecido"
        end
        assert result == "é ele"
    end

    test "interrogation" do
        assert String.ends_with?("lalala", "la")
    end

    test "struct" do
        square = %Square{}        
        assert square.width == 1
        assert square.length == 1

        otherSquare = %Square{length: 2}
        assert otherSquare.width == 1
        assert otherSquare.length == 2
    end
end