defmodule HelloGigalixir.Repo do
  use Ecto.Repo,
    otp_app: :hello_gigalixir,
    adapter: Ecto.Adapters.Postgres
end
