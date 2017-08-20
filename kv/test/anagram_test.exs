defmodule AnagramTest do
    use ExUnit.Case
    doctest Anagram

    test "xparsing a time in the format 00:00" do
       assert Anagram.anagrams?("dyego", "ogeyd")
       refute Anagram.anagrams?("dyego", "ogyed")
    end
end