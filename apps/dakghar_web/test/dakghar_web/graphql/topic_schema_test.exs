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

  describe "add a topic" do
    test "success - with all the needed params", %{conn: conn} do
      arguments = %{
        input: %{
          uniq_code_of_topic: "abc-def",
          name_of_topic: "ititititit",
          difficulty: 4
        }
      }

      conn
      |> run_graphql(GraphQLqueryFactory.add_topic(), arguments)
    end

    test "failure - unique topic code", %{conn: conn} do
      arguments = %{
        input: %{
          uniq_code_of_topic: "abc-def",
          name_of_topic: "ititititit",
          difficulty: 4
        }
      }

      conn
      |> run_graphql(GraphQLqueryFactory.add_topic(), arguments)
      |> json_response(200)

      resp =
        conn
        |> run_graphql(GraphQLqueryFactory.add_topic(), arguments)
        |> json_response(200)

      IO.inspect(resp, label: "resp resp")
      # assert resp.errors
    end
  end
end
