# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

import_config "../apps/*/config/config.exs"

# Configures Elixir's Logger
config :logger, :console,
  level: :warn,
  truncate: :infinity,
  format: "\n$time $metadata[$level] $levelpad$message\n",
  metadata: [:application, :module, :function, :line]

# Import environment specific config.
import_config "#{Mix.env}.exs"
