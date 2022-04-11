defmodule DakgharWeb.GraphQL.Resolvers.TopicResolver do
  alias Dakghar.Topics.Model.Topic

  def list_topics(_, _) do
    {:ok, Topic.list_all()}
  end
end
