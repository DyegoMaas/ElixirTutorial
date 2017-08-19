defmodule Audiobook do
    use Timex

    def getCompletedPercentual(completed, remaining) when is_integer(completed) do
        getDuration(completed, remaining) 
            |> calculatePercentual(completed)
    end

    def getCompletedPercentual(completed, remaining) do
        secondsCompleted = TimeParse.parse(completed) |> TimeParse.toSeconds()
        secondsRemaining = TimeParse.parse(remaining) |> TimeParse.toSeconds()
        getCompletedPercentual(secondsCompleted, secondsRemaining)
    end

    defp getDuration(completed, remaining) do
        completed + remaining
    end

    defp calculatePercentual(milisAudiobookDuration, completed) do
        completed / milisAudiobookDuration * 100
    end
end