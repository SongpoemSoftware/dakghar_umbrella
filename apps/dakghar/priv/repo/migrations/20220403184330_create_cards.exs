defmodule Dakghar.Repo.Migrations.CreateCards do
  use Ecto.Migration

  def change do
    create table(:flashcards, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :topic_code, :string, null: false
      add :front_content, :text, null: false
      add :back_content, :text, null: false
      add :hint, :text, null: false
      add :sequence_no, :integer, null: false
      add :deck_id, references(:flashcard_decks, type: :binary_id, on_delete: :delete_all)
      timestamps()
    end

    create unique_index(:flashcards, [:deck_id, :sequence_no])
  end
end
