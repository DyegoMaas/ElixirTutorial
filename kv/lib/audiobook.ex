defmodule Audiobook do
    @moduledoc """
    This module performs audiobook related calculations
    """

    @doc """
    Calculates the % of reading completion.

    ## Parameters
     - completed: the amount of time already read/heard
     - remaining: the amount of time that remains to read/heard

    ## Examples
        iex> Audiobook.get_completed_percentual(0, 1000)
        0.0

        iex> Audiobook.get_completed_percentual(100, 900)
        10.0

        iex> Audiobook.get_completed_percentual(1000, 0)
        100.0
    """
    def get_completed_percentual(completed, remaining) do
        get_duration(completed, remaining) 
        |> calculate_percentual(completed)
    end

    defp get_duration(completed, remaining) do
        completed + remaining
    end

    defp calculate_percentual(duration, completed) do
        100.0 * completed / duration
    end
end