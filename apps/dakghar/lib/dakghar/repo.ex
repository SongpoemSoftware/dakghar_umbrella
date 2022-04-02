defmodule Dakghar.Repo do
  use Ecto.Repo,
    otp_app: :dakghar,
    adapter: Ecto.Adapters.Postgres
end
