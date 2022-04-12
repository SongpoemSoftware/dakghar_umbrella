defmodule DakgharWeb.GraphQL.Schema.TopicSchemaTest do
  use DakgharWeb.ConnCase

  describe "list all topics" do
    test "success - returns blank for no topics", %{conn: conn} do
      assert %{
               "data" => data,
               "errors" => errors
             } =
               conn
               |> run_graphql(GraphQLqueryFactory.list_topics(), %{})
               |> json_response(200)

      assert is_nil(data)
      assert is_nil(errors)
    end
  end
end
