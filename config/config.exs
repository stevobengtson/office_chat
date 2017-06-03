# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :office_talk,
  ecto_repos: [OfficeTalk.Repo]

# Configures the endpoint
config :office_talk, OfficeTalk.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "GtbPBOvwGc3RUsiu7owJIOecE16fg3yiLWcjKE3Y/AEU9g/2uCG1cukVoczkjNWj",
  render_errors: [view: OfficeTalk.ErrorView, accepts: ~w(html json)],
  pubsub: [name: OfficeTalk.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
