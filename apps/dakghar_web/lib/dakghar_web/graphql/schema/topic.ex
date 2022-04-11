defmodule DakgharWeb.GraphQL.Schema.TopicSchema do
  @moduledoc """
  GraphQL Schema for Topic
  """
  use Absinthe.Schema.Notation
  alias DakgharWeb.GraphQL.Resolvers.TopicResolver

  object :topic_queries do
    field :list_topics, list_of(:topic_item) do
      resolve(&TopicResolver.list_topics/2)
    end
  end

  object :topic_item do
    field(:name, :string)
    field(:code, :string)
    field(:difficulty, :integer)
  end
end
