defmodule MyList do
  def mapsum([], _func) do 0 end
  def mapsum([head|tail], func) do
    func.(head) + mapsum(tail, func)
  end

  def max(list), do: _max(list, 0) 
  defp _max([], max), do: max
  defp _max([head | tail], max) when max > head do
    _max(tail, max)
  end
  defp _max([head | tail], max) when max <= head do
    _max(tail, head)
  end

  def caesar([], _n), do: []
  def caesar([head | tail], n) do
    [_encode(head, n) | caesar(tail, n)]
  end
  defp _encode(char, n) when char + n > 122 do
    char - n
  end
  defp _encode(char, n), do: char + n

  def span(from, to) when to > from,   do: [ from | span(from + 1, to) ]
  def span(from, to) when to < from,   do: span(to, from)
  def span(from, to) when to === from, do: [ from ]

  def flatten(list), do: _flatten(list, [])
  defp _flatten([], acc), do: acc
  defp _flatten([head | tail], acc) when is_list(head) do
    _flatten(head, acc) ++ _flatten(tail, acc)
  end
  defp _flatten([head | tail], acc) do
    [ head | _flatten(tail, acc) ]
  end

  def foldr([], value, _func), do: value
  def foldr([head|tail], value, func) do
    foldr(tail, func.(head, value), func)
  end

  def foldl(list, value, func) do
    foldr(reverse(list), value, func)
  end

  def map([], fun), do: []
  def map([head|tail], fun) do
    [fun.(head)|map(tail, fun)]
  end

  def reverse([]), do: []
  def reverse([head|tail]) do
    reverse(tail) ++ [ head ]
  end

  # def replace_at(list, index, value) do
  #   _replace_at(list)
  # end
end
