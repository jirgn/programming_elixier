fizzbuz = fn
  0, 0, _ -> "FizzBuz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, a -> a
end

IO.puts fizzbuz.(0, 0, 2)
IO.puts fizzbuz.(0, 1, 2)
IO.puts fizzbuz.(1, 0, 2)
IO.puts fizzbuz.(1, 1, 6)
