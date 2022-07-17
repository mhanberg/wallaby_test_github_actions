import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :wallaby_test_github_actions, WallabyTestGithubActionsWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "lsltvZSggBdBf8qoJGrINo8JrkYvJnfjBdzRAeIH4uf4MILuUyJTLGzo1BSRz+li",
  server: true

# Configure wallaby driver
config :wallaby, driver: Wallaby.Chrome

# In test we don't send emails.
config :wallaby_test_github_actions, WallabyTestGithubActions.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
