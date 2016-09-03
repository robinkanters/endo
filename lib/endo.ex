defmodule Endo do
  def translate(query) do
    "Ecto.Adapters.SQL.query(Repo, \"#{query}\")"
  end
end
