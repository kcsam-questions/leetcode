def is_palindrome(s)
  s = s.downcase.scan(/[a-z0-9]/).join("").chars
  s.each_with_index do |char, idx|
    compared_idx = s.length-idx-1
    break if idx >= compared_idx
    return false unless char == s[compared_idx]
  end
  true
end
