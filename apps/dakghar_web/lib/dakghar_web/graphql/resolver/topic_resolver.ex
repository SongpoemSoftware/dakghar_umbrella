defmodule DakgharWeb.GraphQL.Resolvers.TopicResolver do
  alias Dakghar.Topics.Model.Topic

  def list_topics(_, _) do
    {:ok, Topic.list_all()}
  end

  def create(%{input: params}, _) do
    case Topic.create(params) do
      {:error, _} = fail -> fail
      {:ok, _} = success -> success
    end
  end
end
