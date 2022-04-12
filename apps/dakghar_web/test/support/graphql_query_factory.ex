defmodule DakgharWeb.GraphQLqueryFactory do
  @moduledoc false

  def list_topics do
    """
    query{listTopics {
      code
      name
    }}
    """
  end
end
