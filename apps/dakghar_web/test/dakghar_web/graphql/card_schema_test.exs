defmodule DakgharWeb.Test.GraphQL.CardSchemaTest do
  use DakgharWeb.ConnCase, async: true

  describe "success - list cards filtered by topic code" do
    setup do
      # seed data
      # create topic and cards
      {:ok, %{}}
    end

    test "success - list zero cards of topic which has zero cards", %{conn: conn} do
      arguments = %{
        input: %{
          topic_code: "abc-def"
        }
      }

      assert %{"data" => _data} =
               conn
               |> run_graphql(GraphQLqueryFactory.list_cards(), arguments)
               |> json_response(200)
    end

    test "success - list contains cards of given topic"
    test "success - list contains cards of only given topic"
  end
end
