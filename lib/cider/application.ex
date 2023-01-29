defmodule Cider.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      CiderWeb.Telemetry,
      # Start the Ecto repository
      Cider.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Cider.PubSub},
      # Start Finch
      {Finch, name: Cider.Finch},
      # Start the Endpoint (http/https)
      CiderWeb.Endpoint
      # Start a worker by calling: Cider.Worker.start_link(arg)
      # {Cider.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Cider.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    CiderWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
