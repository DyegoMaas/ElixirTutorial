defmodule Audiobook do
    use Timex

    def get_completed_percentual(completed, remaining) do
        get_duration(completed, remaining) |> calculate_percentual(completed)
    end

    defp get_duration(completed, remaining) do
        completed + remaining
    end

    defp calculate_percentual(duration, completed) do
        100.0 * completed / duration
    end
end