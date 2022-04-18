defmodule Dakghar.Flashcards.CardTest do
  use Dakghar.DataCase, async: true
  alias Dakghar.Flashcards.Schema.Card

  test "module" do
    # assert Code.ensure_compiled?(Card) == true
  end

  test "changeset" do
    result = %Card{} |> Card.changeset(%{front_content: "something"})
    assert result.valid? == true
  end
end
