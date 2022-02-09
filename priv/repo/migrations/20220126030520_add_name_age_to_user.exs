defmodule PhoenixExample.Repo.Migrations.AddNameAgeToUser do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :name, :string
      add :age, :integer
    end
  end
end
