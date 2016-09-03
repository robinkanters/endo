# Endo

Translates a SQL query to Ecto query syntax.

```elixir
iex> Endo.translate("SELECT * FROM Users WHERE age > 18")
"from u in User, where: u.age > 18, select: u"
```

## Installation

1. Add `endo` to your list of dependencies in `mix.exs`:

  ```elixir
  def deps do
    [{:endo, "~> 0.1.0"}]
  end
  ```

2. Ensure `endo` is started before your application:

  ```elixir
  def application do
    [applications: [:endo]]
  end
  ```
