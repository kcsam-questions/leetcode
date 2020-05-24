def plus_one(digits)
  (digits.join.to_i + 1).to_s.chars.map(&:to_i)
end

def plus_one(digits)
  digits[-1] += 1

  last_num = digits[-1]
  len = digits.length
  last_idx = len - 1

  loop do
    break if last_num < 10
    digits[last_idx] = 0
    last_idx - 1 < 0 ? digits.unshift(1) : digits[last_idx-1] += 1 

    last_idx = last_idx - 1
    last_num = digits[last_idx]
    print digits
  end

  digits
end
