defmodule DakgharWeb.GraphQL.Schema do
  use Absinthe.Schema

  alias DakgharWeb.GraphQL.Schema.TopicSchema
  import_types(TopicSchema)

  query do
    import_fields(:topic_queries)
  end
end
