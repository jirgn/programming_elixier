prefix = fn p ->
  fn content ->
    "#{p} #{content}"
  end
end

mrs = prefix.('Mrs.')
IO.puts mrs.('Smith')

elixir = prefix.("Elixir")
IO.puts elixir.("Rocks")
