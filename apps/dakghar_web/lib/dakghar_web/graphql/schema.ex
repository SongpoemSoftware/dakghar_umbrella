defmodule DakgharWeb.GraphQL.Schema do
  use Absinthe.Schema

  alias DakgharWeb.GraphQL.Schema.TopicSchema
  alias DakgharWeb.GraphQL.Middleware

  import_types(TopicSchema)

  @desc "Codename Dakghar. A study revision platform"
  query do
    import_fields(:topic_queries)
  end

  mutation do
    import_fields(:topic_mutations)
  end

  # def middleware(middleware, field. %{identifier: :mutation} = object) do

  # end
end
