# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :badapp, BadappWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "mGV8YKyY4xoYNVuJjw8SWSpWzee1EcHUEXy2Yo9HhN7CJX/goaFYZULRMiTcBh8O",
  render_errors: [view: BadappWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Badapp.PubSub,
  live_view: [signing_salt: "Z6t7QOTz"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
