alias PhoenixExample.{Repo, Accounts.User}

defmodule PhoenixExampleWeb.UserController do
  use PhoenixExampleWeb, :controller

  def index(conn, _params) do
    users = Repo.all(User)
    IO.inspect(users)

    json(conn, users)
  end
end

defimpl Jason.Encoder, for: User do
  def encode(%{__struct__: _} = struct, opts) do
    map =
      struct
      |> Map.from_struct()
      |> sanitize_map()

    Jason.Encoder.Map.encode(map, opts)
  end

  defp sanitize_map(map) do
    Map.drop(map, [:__meta__, :__struct__, :password, :hashed_password, :inserted_at, :updated_at])
  end
end
