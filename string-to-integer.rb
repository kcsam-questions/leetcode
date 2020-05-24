INT_MIN = -2147483648
INT_MAX = 2147483647

def my_atoi(str)
  str = str.lstrip.scan(/(^[-|+|0-9][0-9]*)/).join("")
  return 0 if str.nil?
  return str.to_i if str.to_i.bit_length < 32
  [INT_MIN, INT_MAX].min_by { |x| str.to_i-x }
end
