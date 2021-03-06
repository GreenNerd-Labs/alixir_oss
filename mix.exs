defmodule AlixirOss.MixProject do
  use Mix.Project

  @project_host "https://github.com/GreenNerd-Labs/alixir_oss"
  @version "0.2.1"

  def project do
    [
      app: :alixir_oss,
      version: @version,
      source_url: @project_host,
      homepage_url: @project_host,
      description: description(),
      package: package(),
      elixir: "~> 1.4",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: []
    ]
  end

  defp deps do
    [
      {:alixir_core, "~> 0.2"},
      {:jason, "~> 1.2"},
      {:mime, "~> 1.3.0"},
      {:ex_doc, ">= 0.24.2", only: :dev, runtime: false}
    ]
  end

  defp description do
    "Aliyun OSS adapter."
  end

  defp package do
    [
      name: :alixir_oss,
      files: ["lib", "mix.exs", "README*", "MIT-LICENSE"],
      maintainers: ["CptBreeza", "fahchen"],
      licenses: ["MIT"],
      links: %{"GitHub" => @project_host}
    ]
  end
end
