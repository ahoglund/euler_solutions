defmodule EulerOne do

  def multiples(range), do: _multiples((Enum.to_list range), 0)

  defp _multiples([], total), do: total

  defp _multiples([ head | tail ], total) when rem(head, 3) == 0 do
   _multiples(tail, head + total)
  end

  defp _multiples([ head | tail ], total) when rem(head, 5) == 0 do
   _multiples(tail, head + total)
  end

  defp _multiples([ head | tail ], total) do
   _multiples(tail, total)
  end
end
