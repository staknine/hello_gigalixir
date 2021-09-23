# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :hello_gigalixir,
  ecto_repos: [HelloGigalixir.Repo]

# Configures the endpoint
config :hello_gigalixir, HelloGigalixirWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "D9Zh5L70iXcNE1+rgW3eAO0DJhFU4wO5yVe4M2odI8uC7dFGClLa7bwySTsan9+m",
  render_errors: [view: HelloGigalixirWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: HelloGigalixir.PubSub,
  live_view: [signing_salt: "iVzQ+HCr"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
