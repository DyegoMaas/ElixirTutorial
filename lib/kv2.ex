defmodule Kv2 do
  @moduledoc """
  Documentation for Kv2.
  """

  def start_link() do
    Task.start_link(fn -> loop(%{}) end)
  end

  defp loop(map) do
    receive do
      {:get, key, caller} -> 
        send caller, Map.get(map, key)
        loop(map)
      
      {:put, key, value} ->
        Map.put(map, key, value) |> loop
    end
  end
end
