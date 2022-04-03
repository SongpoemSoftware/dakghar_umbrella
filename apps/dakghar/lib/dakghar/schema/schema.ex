defmodule Dakghar.Schema do
  @moduledoc """
  Interface for Database related rules
  """

  defmacro __using__(_) do
    quote do
      use Ecto.Schema
      import Ecto.Changeset
      @timestamps_opts [type: :utc_datetime]
      alias Dakghar.Repo
    end
  end
end
