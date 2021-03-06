defmodule EmptyParams.Mixfile do
  use Mix.Project

  def project do
    [
      app: :empty_params,
      version: "0.1.3",
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [extra_applications: []]
  end

  defp deps do
    []
  end
end
