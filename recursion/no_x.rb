def no_x(str)
  return '' if str.length.zero?
  (str[0] == 'x' ? "" : str[0]) + no_x(str[1..-1])
end
