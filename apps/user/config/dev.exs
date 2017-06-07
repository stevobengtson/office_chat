use Mix.Config

config :user, User.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "office_chat_users_dev",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  pool_size: 10
