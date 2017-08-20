defmodule TimeParse do
    @moduledoc false

    def parse(completed) do
        parts = String.split(completed, [":"])
        
        {hours, _} = parts |> Enum.at(0) |> Integer.parse
        {minutes, _} = parts |> Enum.at(1) |> Integer.parse        
        {hours, minutes}
    end

    def to_seconds({hours, minutes}) do
        hours * 3600 + minutes * 60
    end
end