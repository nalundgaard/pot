defmodule Pot.Mixfile do
  use Mix.Project

  def project do
    [app: :pot,
     version: "0.9.1",
     description: description,
     package: package,
     deps: deps]
  end

  defp description do
    """
    POT is an Erlang library for generating Google Authenticator compatible one time passwords.
    """
  end

  defp package do
    [files: ~w(src rebar.config README.md LICENSE.txt package.exs),
     contributors: ["Yuce Tekol"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/yuce/pot"}]
  end

  defp deps do
    [{:base32, git: "https://github.com/aetrion/base32_erlang.git"}]
  end

end
