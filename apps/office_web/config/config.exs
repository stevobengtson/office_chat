# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Since models will live in the other apps lets not generate them here
config :phoenix, :generators,
  migration: false,
  model: false

# Configures the endpoint
config :office_web, OfficeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vesF0LMfi9y8QnCrMnfuHKzP+gB3tsYHintnwfhrWpzUImqTh8J3VfivANsr18ve",
  render_errors: [view: OfficeWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: OfficeWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# There are no repos for this app
config :office_web,
  ecto_repos: []

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
