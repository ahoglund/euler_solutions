defmodule EulerTwo do
  def even_fib_sum(limit \\ 4_000_000), do: _even_fib_sum(fib(limit), 0)

  defp _even_fib_sum([], sum), do: sum

  defp _even_fib_sum([ head | tail ], sum) when rem(head, 2) == 0 do
    _even_fib_sum(tail, head + sum)
  end

  defp _even_fib_sum([ head | tail ], sum), do: _even_fib_sum(tail, sum)

  def fib(limit), do: _fib([1], 1, limit)

  defp _fib([ head | tail ], _prev, limit) when head > limit do
    tail
  end

  defp _fib([ head | tail ], prev, limit) do
    _fib([head + prev] ++ [head] ++ tail, head, limit)
  end
end
