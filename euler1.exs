defmodule EulerOne do
  # https://projecteuler.net/problem=1
  #
  # If we list all the natural numbers below 10 that are multiples
  # of 3 or 5, we get 3, 5, 6 and 9.
  # The sum of these multiples is 23.

  Find the sum of all the multiples of 3 or 5 below 1000.

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
