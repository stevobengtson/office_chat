defmodule User do
  use Ecto.Model

  schema "users" do
    field :name
    embeds_one :settings, Settings
  end
end
