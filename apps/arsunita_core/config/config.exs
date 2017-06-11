use Mix.Config

config :arsunita_core, ecto_repos: [ArsunitaCore.Repo]

import_config "#{Mix.env}.exs"
