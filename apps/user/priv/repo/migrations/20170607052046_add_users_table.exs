defmodule User.Repo.Migrations.AddUsersTable do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :uuid, :uuid
      add :crypted_password, :string
      add :name, :string
      add :nickname, :string

      timestamps()
    end
  end
end
