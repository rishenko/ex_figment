use Mix.Config

config :ex_figment, ExFigment.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "ex_figment_dev",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"
