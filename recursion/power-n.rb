def power_n(base, n)
  return 1 if n == 0
  base * power_n(base, n-1)
end
