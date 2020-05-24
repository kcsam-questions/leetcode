def look_and_say(data='1', maxlen=5)
  return data.split(" ") if maxlen == 1

  no_of_count = 1
  str = ''

  current_line = data.split(" ")[-1]
  (0..current_line.length-1).each do |idx|
    if idx == current_line.length-1
      str += "#{no_of_count}#{current_line[idx]}"
    elsif (current_line[idx] != current_line[idx+1])
      str += "#{no_of_count}#{current_line[idx]}"
      no_of_count = 1
    else
      no_of_count += 1
    end
  end

  str += " "

  look_and_say(data + str, maxlen-1)
end
