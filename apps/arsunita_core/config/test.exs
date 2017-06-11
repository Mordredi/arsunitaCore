use Mix.Config

# Configure your database
config :arsunita_core, ArsunitaCore.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "arsunita_core_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
