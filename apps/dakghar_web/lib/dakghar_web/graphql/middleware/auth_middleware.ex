defmodule DakgharWeb.GraphQL.Middleware.AuthMiddleware do
  @behaviour Absinthe.Middleware

  @moduledoc """
  An Admin is authorized to create cards.
  A random user can just view cards.
  A logged in user can view unlimited cards.
  """

  # context
  def call(_resolution, _) do

  end
end
