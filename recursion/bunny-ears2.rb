def count_ears(n)
  num_of_ears = n % 2 == 0 ? 3 : 2
  # The base case = case that terminated the loop
  # When n == 0
  n == 0 ? 0 : num_of_ears + count_ears(n-1)
end
