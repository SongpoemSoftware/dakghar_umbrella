defmodule DakgharWeb.GraphQLqueryFactory do
  @moduledoc false

  def list_topics do
    """
    query{listTopics {
      title
      difficulty
      topic_code
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

  def list_cards do
    """
    query{listCards(topicCode: $topicCode) {
      title
      difficulty
    }}
    """
  end
end
