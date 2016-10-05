# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :kata365,
  ecto_repos: [Kata365.Repo]

# Configures the endpoint
config :kata365, Kata365.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "TfGEdhdtgxNawmGGSNry6yoJUe7VzF9ko5ZGYyCN+Zj0FJg6tFE+tFV3AGlBrsYI",
  render_errors: [view: Kata365.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Kata365.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
