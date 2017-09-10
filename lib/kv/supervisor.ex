defmodule KV.Supervisor do
  use Supervisor

  def start_link(options) do
     Supervisor.start_link(__MODULE__, :ok, options)
  end


  def init(:ok) do
    children = [
      KV.BucketSupervisor,
      {KV.Registry, name: KV.Registry}
    ]

    Supervisor.init(children, strategy: :one_for_all)
  end
end