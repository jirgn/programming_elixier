prefix = fn p ->
  fn content ->
    "#{p} #{content}"
  end
end

mrs = prefix.('Mrs.')
IO.puts mrs.('Smith')

IO.puts prefix.("Elixir").("Rocks")
