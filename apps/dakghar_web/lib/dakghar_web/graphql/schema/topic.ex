defmodule DakgharWeb.GraphQL.Schema.TopicSchema do
  @moduledoc """
  GraphQL Schema for Topic
  """
  use Absinthe.Schema.Notation

object :topic_queries do
  field :list_topics, list_of(:topic_item) do
    #
  end
end

  object :topic_item do
    field :name, :string
    field :code, :string
    field :difficulty, :integer

    # field(:topic_items, list_of(:topic_item), resolve: dataloader(:all_topics, args: %{}) )
  end


end
