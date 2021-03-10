defmodule ListFilter do
  def call(list) do
    list
    |> filter_numbers
    |> get_odds
    |> length
  end

  defp filter_numbers(list) do
    Enum.flat_map(list, fn elem ->
      case Integer.parse(elem) do
        {value, _rest} -> [value]
        :error -> []
      end
    end)
  end

  defp get_odds(list) do
    Enum.filter(list, fn elem -> rem(elem, 2) != 0 end)
  end
end
