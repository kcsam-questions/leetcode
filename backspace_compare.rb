def process_str(str)
  new_arr = []
  str.each_char do |char|
    if char == '#'
      new_arr.pop
    else
      new_arr << char
    end
  end
  new_arr.join
end

def backspace_compare(s, t)
  process_str(s) == process_str(t)
end
