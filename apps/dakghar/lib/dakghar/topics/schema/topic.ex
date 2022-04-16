defmodule Dakghar.Topics.Schema.Topic do
  use Dakghar.Schema

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "topics" do
    field(:topic_code, :string, null: false)
    field(:title, :string, null: false)
    field(:description, :string, null: false)
    field(:difficulty, :integer)

    timestamps(type: :utc_datetime)
  end

  @permitted_params ~w(topic_code title description difficulty)a

  def changeset(%__MODULE__{} = topic, params) do
    topic
    |> cast(params, @permitted_params)
  end
end
