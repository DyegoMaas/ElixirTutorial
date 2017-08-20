defmodule Anagram do
    @moduledoc false

    def anagrams?(a, b) when is_binary(a) and is_binary(b) do
        sort_string(a) == sort_string(b)
    end

    def graphemes(string) when is_binary(string) do
        string
        |> String.downcase
        |> String.graphemes
    end

    def sort_string(string) do
        string
        |> String.downcase
        |> String.graphemes
        |> Enum.sort
    end
end