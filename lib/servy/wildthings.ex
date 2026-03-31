defmodule Servy.Wildthings do
  alias Servy.Bear

  def list_bears do
    [
      %Bear{name: "Teddy", type: "Brown", id: 1, hibernating: false},
      %Bear{name: "Baloo", type: "Black", id: 2, hibernating: false},
      %Bear{name: "Smokey", type: "Grizzly", id: 3, hibernating: true},
      %Bear{name: "Yogi", type: "Black", id: 4, hibernating: false},
      %Bear{name: "Paddington", type: "Brown", id: 5, hibernating: true}
    ]
  end

  def get_bear(id) when is_integer(id) do
    Enum.find(list_bears(), fn bear -> bear.id == id end)
  end

  def get_bear(id) when is_binary(id) do
    id |> String.to_integer() |> get_bear()
  end
end
