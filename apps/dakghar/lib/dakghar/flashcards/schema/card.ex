defmodule Dakghar.Flashcards.Schema.Card do
  use Dakghar.Schema

  schema "flashcards" do
    field(:front_content, :string, null: false)
    field(:back_content, :string, null: false)
    field(:topic_code, :string, null: false)
    field(:hint, :string)
  end

  @required_params ~w(front_content back_content topic_code)a
  @optional_params ~w(hint)a
  @permitted_params @required_params ++ @optional_params

  def changeset(%__MODULE__{} = card, params) do
    card
    |> cast(params, @permitted_params)
  end
end
