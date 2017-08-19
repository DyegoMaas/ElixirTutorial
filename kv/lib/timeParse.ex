defmodule TimeParse do
    def parse(completed) do
        parts = String.split(completed, [":"])
        
        {hours, _} = Enum.at(parts, 0) |> Integer.parse
        {minutes, _} = Enum.at(parts, 1) |> Integer.parse
        {hours, minutes}
    end

    def to_seconds({hours, minutes}) do
        hours * 3600 + minutes * 60
    end
end