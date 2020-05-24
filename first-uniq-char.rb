def first_uniq_char(s)
  s.chars.uniq.each do |char|
    return s.index(char) if s.count(char) == 1
  end
  -1
end

def first_uniq_char(s)
  s.chars.each_with_index do |char, idx|
    is_unique = true

    (0..s.length-1).each do |compared_idx|
      next if idx == compared_idx

      if char == s[compared_idx]
        is_unique = false
        break
      end
    end

    return idx if is_unique
  end

  -1
end


def first_uniq_char(s)
  dict = {}
  s.chars.each do |char|
    dict[char] ||= 0
    dict[char] += 1
  end

  char = dict.key(1)
  return -1 unless char
  s.index(char)
end
