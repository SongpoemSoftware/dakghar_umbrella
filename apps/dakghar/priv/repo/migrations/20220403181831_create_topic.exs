defmodule Dakghar.Repo.Migrations.CreateTopic do
  use Ecto.Migration

  def change do
    create table(:topics, primary_key: false) do
      add :topic_code, :string, null: false
      add :id, :binary_id, primary_key: true
      add :title, :string, null: false
      add :description, :text
      add :tags, {:array, :string}
      timestamps()

    end

    create unique_index(:topics, [:topic_code])
  end
end
