defmodule Bamboo.AdapterHelper do
  def hackney_opts(config) do
    config
    |> Map.get(:hackney_opts, [])
    |> Enum.concat([:with_body])
    |> Enum.concat(Application.get_env(:bamboo, :hackney_opts, []))
  end
end
