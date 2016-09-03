defmodule Endo.Mixfile do
  use Mix.Project

  def project do
    [app: :endo,
     version: "0.0.1-beta",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:ex_doc, ">= 0.0.0", only: :dev}]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md"],
      maintainers: ["Brian van Burken"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/brianvanburken/endo",
        "Docs" => "http://hexdocs.pm/endo/"
      }
   ]
  end

  defp description do
    """
    Translates SQL to Ecto
    """
  end
end
