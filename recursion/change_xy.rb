def change_xy(str)
  return '' if str.length == 0
  (str[0] == 'x' ? 'y' : str[0]) + change_xy(str[1..-1])
end
