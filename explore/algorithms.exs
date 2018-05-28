defmodule Algorithms do
  def fibonacci(0), do: 0
  def fibonacci(1), do: 1
  def fibonacci(2), do: 1
  def fibonacci(actual) when is_integer(actual) and actual >= 2 do
    fibonacci(actual - 1) + fibonacci(actual - 2)
  end
end
