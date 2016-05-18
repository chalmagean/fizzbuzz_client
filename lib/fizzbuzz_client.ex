defmodule FizzbuzzClient do
  def fetch(commands, options) do
    case hd(commands) do
      "list" ->
        page = options[:page] || 1
        HTTPotion.get("localhost:3000/#{page}.json", query: options).body
      "favorite" ->
        HTTPotion.get("localhost:3000/favorite/#{options[:number]}.json", query: %{auth_token: options[:auth_token]}).body
      _ ->
        "Nothing to do."
    end
  end
end
