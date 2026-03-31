defmodule Servy.Plugins do
  alias Servy.Conv

  @doc "Tracks requests that result in a 404 status."
  def track(%Conv{status: 404, path: path} = conv) do
    IO.puts("Tracking in progress... #{path}")
    conv
  end

  def track(%Conv{} = conv), do: conv

  @doc "Rewrites the path to /wildthings if the path is /wildlife."
  def rewrite_path(%Conv{path: "/wildlife"} = conv) do
    %{conv | path: "/wildthings"}
  end

  def rewrite_path(%Conv{} = conv), do: conv

  @doc "Rewrites the path to /bears/{id} if the path is /bears?id={id}."
  def rewrite_params(%Conv{path: "/bears?id=" <> id} = conv) do
    %{conv | path: "/bears/#{id}"}
  end

  def rewrite_params(%Conv{} = conv), do: conv

  def log(%Conv{} = conv), do: IO.inspect(conv)
end
