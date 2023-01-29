defmodule Cider.Repo do
  use Ecto.Repo,
    otp_app: :cider,
    adapter: Ecto.Adapters.Postgres
end
