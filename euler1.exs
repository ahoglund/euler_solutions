defmodule EulerOne do
  def multiples(range), do: _multiples(Enum.to_list range)

  defp _multiples([]), do: 0

  defp _multiples([ head | tail ]) when rem(head, 3) == 0, do: head + _multiples(tail)

  defp _multiples([ head | tail ]) when rem(head, 5) == 0, do: head + _multiples(tail)

  defp _multiples([ _head | tail ]), do: _multiples(tail)

  def multiples_of_three_and_five(range) do
    range
      |> Enum.to_list
      |> _filter_by_three_or_five
      |> Enum.sum
  end

  defp _filter_by_three_or_five(list) do
    Enum.filter(list, &(rem(&1, 3) == 0 || rem(&1, 5) == 0))
  end
end
