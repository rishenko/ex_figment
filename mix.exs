defmodule ExFigment.Umbrella.Mixfile do
  @moduledoc "Umbrella mix file for ExFigment."

  use Mix.Project

  def project do
    [
      apps_path: "apps",
      version: "0.0.1",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: ["coveralls": :test, "coveralls.html": :test],
      source_url: "https://github.com/rishenko/ex_figment",
      homepage_url: "https://github.com/rishenko/ex_figment",
      docs: [main: "readme.html#content", extras: ["README.md"]]
    ]
  end

  # Dependencies
  defp deps do
    [
      {:credo, "~> 0.9", only: [:dev, :test], runtime: false},
      {:excoveralls, "~> 0.8", only: :test},
      {:ex_doc, "~> 0.18", only: :dev, runtime: false},
      {:inch_ex, "~> 0.5", only: [:dev, :test]}
    ]
  end
end
