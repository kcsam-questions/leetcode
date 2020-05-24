def reverse(x)
  ans = x.to_s.reverse.to_i
  ans = -ans if x.negative?
  ans.bit_length > 31 ? 0 : ans
end
