defmodule MechTrackerApi.Repo do
  use Ecto.Repo,
    otp_app: :mech_tracker_api,
    adapter: Ecto.Adapters.Postgres
end
