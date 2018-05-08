fizzbuz = fn
  0, 0, _ -> "FizzBuz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, a -> a
end

rembuzz = fn n -> 
  fizzbuz.(rem(n, 3), rem(n, 5), n)
end

IO.puts rembuzz.(10)
IO.puts rembuzz.(11)
IO.puts rembuzz.(12)
IO.puts rembuzz.(13)
IO.puts rembuzz.(14)
IO.puts rembuzz.(15)
IO.puts rembuzz.(16)
IO.puts rembuzz.(17)
