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
    guess(actual, a..current-1)
  end
  def process(actual, _..b, current) when current < actual do
    guess(actual, current+1..b)
  end
end
