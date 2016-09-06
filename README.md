# Endo

Translates a SQL query to Ecto query syntax.

## Examples:
```elixir
iex> Endo.translate("SELECT * FROM Users WHERE age > 18")
"from u in User, where: u.age > 18, select: u"
```

or

```elixir
iex> Endo.translate("SELECT * FROM Users WHERE age > 18")
"Users |> where([u], u.age > 18)
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

## The Big Idea

I want to create a library that takes input SQL, Cypher, MongoDB, etc. and convert it
to libraries specific syntax like Ecto, Arel and ActiveRecord.

This will be a great educational tool for developers that know how to write a
SQL query but don't know how to covert it to that specific library.

My goal is to make it extendible so other libraries can easily be added. I want
to reach this by converting the input to a AST/CST.

I got this inspiration from [http://scuttle.io](http://scuttle.io) where you can convert SQL to Arel.

## Usefull links

Ecto syntax examples: [http://www.glydergun.com/the-ecto-query-library/](http://www.glydergun.com/the-ecto-query-library/)
