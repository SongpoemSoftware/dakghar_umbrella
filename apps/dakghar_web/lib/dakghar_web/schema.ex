defmodule DakgharWeb.Schema do
  use Absinthe.Schema

  query do
    field :all_topic_items, list_of(:topic_item)
  end

  object :topic_item do
    field :name, :string
    field :code, :string
    field :difficulty, :integer
  end
end
