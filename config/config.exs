# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :mech_tracker_api,
  ecto_repos: [MechTrackerApi.Repo]

# Configures the endpoint
config :mech_tracker_api, MechTrackerApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Nhwjnl+kwOr3JxL/VK2EUsfRqLdFhyYx4jyg0RZJmwlf4FnBYpTR2v/XvamNpbNv",
  render_errors: [view: MechTrackerApiWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: MechTrackerApi.PubSub,
  live_view: [signing_salt: "2+gdYy7m"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
