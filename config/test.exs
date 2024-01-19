import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :test_app, TestAppWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "SBZ5zGuooAMhXlN0rrcsjNk96GwkarIziqvIcsuE6gPbjOwMRPIM5ExqIMpqDBPt",
  server: false

# In test we don't send emails.
config :test_app, TestApp.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
