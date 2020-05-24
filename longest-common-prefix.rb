# --------------------------------------------------
def longest_common_prefix(strs)
  common_prefix = ""

  return common_prefix if strs.length == 0

  len = strs[0].length

  (0..len-1).each do |idx|
    if strs.map { |word| word[0..idx] }.uniq.length == 1
      common_prefix = strs[0][0..idx]
    else
      break
    end
  end

  common_prefix
end
# --------------------------------------------------

# Slowest
def longest_common_prefix(strs)
  return "" unless strs[0]

  shortest_word = strs.min_by(&:length)

  possible_prefixes = []

  (0..shortest_word.length-1).each do |idx|
    possible_prefixes << shortest_word[0..idx]
  end

  possible_prefixes.reverse.each do |prefix|
    return prefix if strs.all? { |str| str[0..prefix.length-1] == prefix }
  end

  ""
end

# --------------------------------------------------
#
def longest_common_prefix(strs)
  common_prefix = ""

  return common_prefix unless strs[0]

  shortest_word = strs.min_by(&:length)
  (0..shortest_word.length-1).each do |idx|
    current_prefix = shortest_word[0..common_prefix.length]

    strs.each do |word|
      return common_prefix if current_prefix != word[0..common_prefix.length]
    end

    common_prefix = current_prefix
  end
  common_prefix
end

# ------------------------------------------------------
#
def longest_common_prefix(strs)
  return "" unless strs[0]

  strs.sort!

  first_word = strs[0]
  last_word = strs[-1]

  # This make the submission faster
  return "" if first_word == ""

  str = ""

  i = 0
  # NOTE: Using loop is so much faster than while and each
  # loop > while > each
  loop do
    if first_word[i] == last_word[i] && first_word[i] && last_word[i]
      str << first_word[i]
      i += 1
    else
      break
    end
  end

  str
end
