defmodule Dakghar.Topics.Schema.Topic do
  use Dakghar.Schema

  schema "topics" do
    field(:topic_code, :string, null: false)
    field(:title, :string, null: false)
    field(:description, :string, null: false)
  end

  @permitted_params ~w(topic_code title description)a

  def changeset(%__MODULE__{} = topic, params) do
    topic
    |> cast(params, @permitted_params)
  end

end
