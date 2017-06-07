use Mix.Config

config :user, User.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "office_chat_users_test",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"
  pool: Ecto.Adapters.SQL.Sandbox

config :logger,
  backends: [:console],
  compile_time_purge_level: :debug
