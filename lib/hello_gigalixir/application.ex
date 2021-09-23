defmodule HelloGigalixir.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      HelloGigalixir.Repo,
      # Start the Telemetry supervisor
      HelloGigalixirWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: HelloGigalixir.PubSub},
      # Start the Endpoint (http/https)
      HelloGigalixirWeb.Endpoint
      # Start a worker by calling: HelloGigalixir.Worker.start_link(arg)
      # {HelloGigalixir.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: HelloGigalixir.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    HelloGigalixirWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
