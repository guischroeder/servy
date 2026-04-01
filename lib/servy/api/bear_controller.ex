defmodule Servy.Api.BearController do
  alias Servy.Wildthings

  def index(conv) do
    bears = Wildthings.list_bears()
    json = Poison.encode!(bears)

    %{
      conv
      | status: 200,
        resp_body: json,
        headers: Map.put(conv.headers, "Content-Type", "application/json")
    }
  end
end
