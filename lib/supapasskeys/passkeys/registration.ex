defmodule Supapasskeys.Passkeys.Registration do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  @schema_prefix "supapasskeys"
  schema "registrations" do
    field :user_id, Ecto.UUID
    field :state, :string
    field :confirmed_at, :utc_datetime
    field :creation_options, :string, virtual: true

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(registration, attrs) do
    registration
    |> cast(attrs, [:user_id, :state, :confirmed_at])
    |> validate_required([:user_id, :state])
  end
end
