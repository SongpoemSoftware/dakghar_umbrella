defmodule Dakghar.Repo.Migrations.CreateDeck do
  use Ecto.Migration

  def change do
    create table(:flashcard_decks, primary_key: false) do
      add :title, :string
      add :id, :binary_id, primary_key: true
      add :description, :text
      add :topic_code, :string

      add :author, :string
      timestamps()
    end

    create index(:flashcard_decks, [:topic_code])
  end
end
