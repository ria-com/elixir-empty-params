defmodule EmptyParams do
  @moduledoc """
  Phoenix plug for filtering query params from empty keys and values
  """

  def init(_), do: nil

  @doc """
  Filtering query params from empty keys and values

    iex> EmptyParams.call(%{params: %{a: 1, b: "two", c: nil, "": "empty"}}, nil)
    %{params: %{a: 1, b: "two"}}

  """
  def call(conn, _) do
    conn
    |> filter
  end

  defp filter(map) do
    map
      |> Map.put(:params,
        map.params
        |> Map.to_list
        |> Enum.filter(fn({k,v})-> k && v && k != :"" && v != "" end)
        |> Map.new
      )
  end
end