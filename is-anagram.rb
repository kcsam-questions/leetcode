def is_anagram(s, t)
  dict = {}

  return false if s.length != t.length

  s.chars.each do |char|
    dict[char] ||= 0
    dict[char] += 1
  end

  t.chars.each do |char|
    return false unless dict[char]
    dict[char] -= 1
  end

  dict.each_value do |val|
    return false if val != 0
  end

  true
end


def is_anagram(s, t)
  s.chars.sort == t.chars.sort
end
