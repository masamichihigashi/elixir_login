# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :projectX,
  ecto_repos: [ProjectX.Repo]

# Configures the endpoint
config :projectX, ProjectX.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "U089nVhG7hsXfIzLCMS1h5B9HCcKLIf+0ejUNdKBxIdAYu6Zy0WhRqSQ+26HCs/E",
  render_errors: [view: ProjectX.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ProjectX.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
