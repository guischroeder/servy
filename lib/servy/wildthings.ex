defmodule Servy.Wildthings do
  alias Servy.Bear

  def list_bears do
    [
      %Bear{name: "Teddy", type: "Brown", id: 1, hibernating: true},
      %Bear{name: "Smokey", type: "Black", id: 2, hibernating: false},
      %Bear{name: "Paddington", type: "Brown", id: 3, hibernating: false},
      %Bear{name: "Scarface", type: "Grizzly", id: 4, hibernating: true},
      %Bear{name: "Snow", type: "Polar", id: 5, hibernating: false},
      %Bear{name: "Brutus", type: "Grizzly", id: 6, hibernating: false},
      %Bear{name: "Rosie", type: "Black", id: 7, hibernating: true},
      %Bear{name: "Roscoe", type: "Panda", id: 8, hibernating: false},
      %Bear{name: "Iceman", type: "Polar", id: 9, hibernating: true},
      %Bear{name: "Kenai", type: "Grizzly", id: 10, hibernating: false}
    ]
  end

  def get_bear(id) when is_integer(id) do
    Enum.find(list_bears(), fn bear -> bear.id == id end)
  end

  def get_bear(id) when is_binary(id) do
    id |> String.to_integer() |> get_bear()
  end
end
