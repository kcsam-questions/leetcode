def num_jewels_in_stones(j, s)
  hash = j.split('').product([0]).to_h

  s.each_char do |char|
    next unless hash[char]

    hash[char] += 1
  end

  hash.values.sum
end
