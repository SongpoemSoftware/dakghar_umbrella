defmodule DakgharWeb.GraphQL.Schema.TopicSchema do
  @moduledoc """
  GraphQL Schema for Topic
  """
  use Absinthe.Schema.Notation
  alias DakgharWeb.GraphQL.Resolvers.TopicResolver

  object :topic_queries do
    @desc "All the possible topics we know."
    field :list_topics, list_of(:topic_item) do
      resolve(&TopicResolver.list_topics/2)
    end
  end

  object :topic_mutations do
    @desc "add new topic"
    field :create_topic, :topic_item do
      arg(:input, non_null(:topic_input))
      resolve(&TopicResolver.create/2)
    end
  end

  input_object :topic_input do
    field(:title, :string, name: "name_of_topic")
    field(:topic_code, :string, name: "uniq_code_of_topic")
    field(:difficulty, non_null(:integer))
  end

  object :topic_item do
    field(:title, :string)
    field(:topic_code, :string)
    field(:difficulty, :integer)
  end
end
