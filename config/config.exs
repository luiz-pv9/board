# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :board,
  ecto_repos: [Board.Repo]

# Configures the endpoint
config :board, BoardWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ClHiUDkM9zli0+d7u/3KPXOLDvF8A64+OCEU9jnOrPX88Ny9WitwujsdDt5mRfib",
  render_errors: [view: BoardWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Board.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
