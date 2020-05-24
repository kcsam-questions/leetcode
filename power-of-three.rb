def power_of_three(n)
  return false if n < 1
  while (n % 3 == 0)
    n /= 3.0
  end
  n == 1
end

def power_of_three(n)
  # Turn the number into the base of 3
  !(n.to_s(3) =~ /^10+$/).nil?
end
