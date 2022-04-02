defmodule Dakghar.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Dakghar.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Dakghar.PubSub}
      # Start a worker by calling: Dakghar.Worker.start_link(arg)
      # {Dakghar.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Dakghar.Supervisor)
  end
end
