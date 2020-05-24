def count_hi(str)
  return 0 if str.length < 2
  (str[0..1] == 'hi' || str[1..2] == 'hi' ? 1 : 0) + count_hi(str[2..-1])
end
