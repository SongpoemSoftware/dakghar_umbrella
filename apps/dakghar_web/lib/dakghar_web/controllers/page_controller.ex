defmodule DakgharWeb.PageController do
  use DakgharWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
