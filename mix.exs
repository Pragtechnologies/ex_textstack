defmodule ExTextstack.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_textstack,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:req, "~> 0.5.9"},
      {:jason, "~> 1.4"},
      {:exvcr, "~> 0.17.0"},
      {:hackney, "~> 1.23"}
    ]
  end
end
