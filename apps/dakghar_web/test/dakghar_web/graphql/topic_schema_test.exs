defmodule DakgharWeb.GraphQL.Schema.TopicSchemaTest do
  use DakgharWeb.ConnCase

  describe "list all topics" do
    test "success - returns blank for no topics", %{conn: conn} do
      assert %{
               "data" => %{"listTopics" => data}
             } =
               conn
               |> run_graphql(GraphQLqueryFactory.list_topics(), %{})
               |> json_response(200)

      assert data == []
    end

    test "success - returns blank for no topics without conn" do
      result =
        Absinthe.run(GraphQLqueryFactory.list_topics(), DakgharWeb.GraphQL.Schema, variables: %{})

      assert result = {:ok, data: %{"data" => []}}
    end
  end
end
