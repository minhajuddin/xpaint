# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :xpaint,
  namespace: XP,
  ecto_repos: [XP.Repo]

# Configures the endpoint
config :xpaint, XPWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "M5hRlPYwe9eclv7qiKmb5UXqflvxUypeLcZXCJLGmL92m4PW7cFTEOdmgszTUX8r",
  render_errors: [view: XPWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: XP.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
