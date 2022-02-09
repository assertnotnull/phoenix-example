# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     PhoenixExample.Repo.insert!(%PhoenixExample.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias PhoenixExample.Accounts

[
  %{
    email: "test@test.com",
    password: "test12345678",
    name: "Patrice",
    age: 38
  },
  %{
    email: "test2@test.com",
    password: "test12345678",
    name: "Gus",
    age: 34
  }
]
|> Enum.each(&Accounts.register_user/1)
