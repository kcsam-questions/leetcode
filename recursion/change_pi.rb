def change_pi(str)
  return '' if str.length <= 0
  str[0..1] == 'pi' ? ('3.14' + change_pi(str[2..-1])) : (str[0] + change_pi(str[1..-1]))
end
