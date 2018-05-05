defmodule ExFigment.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ex_figment,
      version: "0.0.1",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.6",
      elixirc_paths: elixirc_paths(Mix.env),
      start_permanent: Mix.env == :prod,
      aliases: aliases(),
      deps: deps(),
      dialyzer: [plt_add_deps: :project],
      test_coverage: [tool: ExCoveralls]
    ]
  end

  # Configuration for the OTP application.
  def application do
    [
      mod: {ExFigment.Application, []},
      extra_applications: [:logger, :ranch, :ecto, :postgrex, :cachex],
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  # Project dependencies.
  defp deps do
    [
      {:ranch, "~> 1.3",
       [env: :prod, hex: "ranch", repo: "hexpm", optional: false, manager: :rebar3]},
      {:ecto, "~> 2.2"},
      {:postgrex, "~> 0.13"},
      {:csv, "~> 2.0"},
      {:cachex, "~> 3.0"},
      {:dialyxir, "~> 0.5", only: [:dev], runtime: false},
      {:uuid, "~> 1.1"}
    ]
  end

  # Mix aliases
  defp aliases do
    []
  end
end
