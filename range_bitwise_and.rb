def range_bitwise_and(m, n)
  (m..n).inject { |accum, i| accum & i }
end

# https://www.geeksforgeeks.org/bitwise-and-or-of-a-range/
def range_bitwise_and(m, n)
  while m < n
    n -= (n & -n)
  end
  n
end
