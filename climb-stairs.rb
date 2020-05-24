def climb_stairs(n)
  return n if n < 3

  arr = [1, 2]

  (n-2).times do
    arr << arr[-1] + arr[-2]
  end


  arr[-1]
end
