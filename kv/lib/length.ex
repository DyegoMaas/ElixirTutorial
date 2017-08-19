defmodule Length do

    def one(), do: 1

    def of([]), do: 0
    def of([_ | tail]), do: 1 + of(tail)

end