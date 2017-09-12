defmodule Rope.Mixfile do
  use Mix.Project

  def project do
    [
      app: :rope,
      version: "0.1.2",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      description: description(),
      package: package(),

      # Docs
      name: "ropex",
      source_url: "https://github.com/ijcd/ropex",
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
      # dev
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:apex, "~>1.0.0", only: :dev, runtime: false},

      # testing
      {:mix_test_watch, "~> 0.3", only: :dev, runtime: false},
      {:credo, "~> 0.8.5", only: :dev, runtime: false},
      {:dialyxir, "~> 0.5", only: [:dev, :test], runtime: false},
    ]
  end

  defp description() do
    "Elixir implementation of a persistent Rope datastructure."
  end

  defp package() do
    [
      name: "ropex",
      maintainers: ["Ian Duggan"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/ijcd/ropex"}
    ]
  end
end
