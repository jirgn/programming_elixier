defmodule Guess do
  def guess(actual, range) do
    low..high = range
    guess = div(low + high, 2)
    IO.puts "Is it #{guess}"
    process(guess, actual, range)
  end
  def process(current, actual, range) when current == actual do
    IO.puts current
  end
  def process(current, actual, range) when current > actual do
    low.._ = range
    high = current - 1
    guess(actual, low..high)
  end
  def process(current, actual, range) when current < actual do
    _..high = range
    low = current + 1
    guess(actual, low..high)
  end
end
