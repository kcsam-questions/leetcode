def count_largest_group(n)
  hash = {}
  max = 0

  (1..n).each do |i|
    total = i.to_s.each_char.map(&:to_i).sum

    hash[total] ||= 0
    hash[total] += 1
    max = hash[total] if hash[total] > max
  end

  count = 0

  hash.each do |key, val|
    count += 1 if val == max
  end

  count
end
