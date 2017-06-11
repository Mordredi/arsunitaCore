# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :arsunita_core_web,
  namespace: ArsunitaCore.Web,
  ecto_repos: [ArsunitaCore.Repo]

# Configures the endpoint
config :arsunita_core_web, ArsunitaCore.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "z6n7/8WQ1m9rshgGT2//X/iTMCZqlIgW6pPPGHRuhfXUFsyBytrhNtqwkXzbG9jw",
  render_errors: [view: ArsunitaCore.Web.ErrorView, accepts: ~w(json)],
  pubsub: [name: ArsunitaCore.Web.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :arsunita_core_web, :generators,
  context_app: :arsunita_core

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
