def count_x(str)
  return 0 if str.length == 0
  (str[0] == 'x' ? 1 : 0) + count_x(str[1..-1])
end
