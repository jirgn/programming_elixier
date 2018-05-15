defmodule Guess do
  def guess(actual, a..b) do
    guess = div(a + b, 2)
    IO.puts "Is it #{guess}"
    process(actual, a..b, guess)
  end
  def process(actual, _, current) when current == actual do
    IO.puts current
  end
  def process(actual, a.._, current) when current > actual do
    b = current - 1
    guess(actual, a..b)
  end
  def process(actual, _..b, current) when current < actual do
    a = current + 1
    guess(actual, a..b)
  end
end
