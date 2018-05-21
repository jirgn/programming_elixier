defmodule Chop do
  def guess(actual, low..high) do
    guess = div(low + high, 2)
    process(actual, low..high, guess)
  end
  def process(actual, _, current) when current == actual do
    IO.puts current
  end
  def process(actual, low.._, current) when current > actual do
    high = current - 1
    guess = div(low + high, 2)
    IO.puts "Is it #{guess}"
    process(actual, low..high, guess)
  end
  def process(actual, _..high, current) when current < actual do
    low = current + 1
    guess = div(low + high, 2)
    IO.puts "Is it #{guess}"
    process(actual, low..high, guess)
  end
end
