require "timeout"

def is_happy(n)
  sum = 0
  num = n

  10.times do
    sum = 0
    num.to_s.each_char do |i|
      sum += i.to_i ** 2
    end
    return true if sum == 1
    puts sum
    num = sum
  end

  false
end

def is_happy(n)
  return true if n == 1
  sum_map = {}
  sum = n

  while sum != 1
    sum = num.digits.map { |i| i * i }.sum
    return true if sum == 1
    return false if sum_map[sum]

    sum_map[sum] = 1
  end
end
