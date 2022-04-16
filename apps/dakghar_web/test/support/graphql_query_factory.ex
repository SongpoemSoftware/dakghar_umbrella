defmodule DakgharWeb.GraphQLqueryFactory do
  @moduledoc false

  def list_topics do
    """
    query{listTopics {
      title
      difficulty
    }}
    """
  end

  def add_topic do
    """
    mutation CreateTopic($input: TopicInput!) {
      createTopic(input: $input) {
        difficulty
        title
      }
    }
    """
  end
end
