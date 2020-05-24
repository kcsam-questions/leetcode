def count_7(n)
  return 0 if n == 0
  (n%10 == 7 ? 1 : 0) + count_7(n/10)
end
