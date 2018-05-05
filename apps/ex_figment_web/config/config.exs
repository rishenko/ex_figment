# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ex_figment_web,
  namespace: ExFigmentWeb

# Configures the endpoint
config :ex_figment_web, ExFigmentWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "exoFJ9RGbNKaelK0DwVH4BacNN+VwL0YrNIzbJbPgOgUOeJDNYZzqUF0dciaNwfR",
  render_errors: [view: ExFigmentWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ExFigmentWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :ex_figment_web, :generators,
  context_app: :ex_figment

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
