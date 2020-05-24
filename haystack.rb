# Exceed time limit
def str_str(haystack, needle)
  len = needle.length
  return 0 if len == 0
  return -1 if haystack.length < len

  haystack.chars.each_with_index do |char, idx|
    break if idx > haystack.length - len
    next if haystack[idx..idx+len-1] != needle

    return idx
  end

  -1
end

# Passed
def str_str(haystack, needle)
  haystack.index(needle) || -1
end

def str_str(haystack, needle)
  if haystack.include?(needle)
    haystack.index(needle)
  else
    -1
  end
end
