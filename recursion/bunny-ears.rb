def count_ears(n)
  n == 0 ? 0 : 2 + count_ears(n-1)
end
