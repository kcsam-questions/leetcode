def roman_to_int(s)
  roman_dict = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }

  total = 0

  s = s.chars
  s.each_with_index do |roman, idx|
    if idx == s.length - 1 || roman_dict[roman] >= roman_dict[s[idx+1]]
      total += roman_dict[roman]
    else
      total -= roman_dict[roman]
    end
  end

  total
end

# Recursion
def roman_to_int(s)
  roman_dict = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }

  return roman_dict[s] if s.length == 1
  (roman_dict[s[0]] >= roman_dict[s[1]] ? roman_dict[s[0]] : -roman_dict[s[0]]) + roman_to_int(s[1..-1])
end
