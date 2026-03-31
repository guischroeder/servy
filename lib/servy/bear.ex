defmodule Servy.Bear do
  defstruct name: "", type: "", id: nil, hibernating: false

  def order_asc_by_name(bear1, bear2) do
    bear1.name < bear2.name
  end
end
