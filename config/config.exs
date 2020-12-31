# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :source_text_editor,
  ecto_repos: [SourceTextEditor.Repo]

# Configures the endpoint
config :source_text_editor, SourceTextEditorWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0Gd9agTB5FIVLHhXtjqNEb6sCaQ9nWdLb6b+POVmXDAijuJLJ2E64rnD6nj5EXSB",
  render_errors: [view: SourceTextEditorWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: SourceTextEditor.PubSub,
  live_view: [signing_salt: "JJPnk308"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
