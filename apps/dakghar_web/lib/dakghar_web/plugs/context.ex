defmodule DakgharWeb.Plugs.Context do
  @behaviour Plug
  import Plug.Conn

  def init(opts), do: opts

  def call(conn, _) do
    context = build_context(conn)
    IO.inspect(context: context, label: "connnnnnnn textttt")
    Absinthe.Plug.put_options(conn, context: context)
  end

  defp build_context(conn) do
    with ["Bearer" <> token] <- get_req_header(conn, "authorization"),
    {:ok, data} <- get_user(token),
    %{} = user = get_user(data)
    do
      %{current_user: user}
    else
      _ -> %{}
    end
  end

  # get_user data
  # A user can be guest / logged in
  def get_user(%{id: id, role: role}) do
    # Dakghar.Accounts.lookup(role, id)
  end

end
