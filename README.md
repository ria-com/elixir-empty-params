# EmptyParams

Phoenix plug for filtering query params from empty keys and values

```elixir
  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    # ...
    plug EmptyParams
  end
```

## Installation

```elixir
def deps do
  [{:empty_params, git: "https://github.com/ria-com/elixir-empty-params.git"}]
end
```

## Testing

```bash
[elixir-empty-params]# mix test
```
