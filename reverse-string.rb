def reverse_string(s)
  (0..s.length-1).each do |left|
    right = s.length-left-1
    return s if left >= right
    s[left], s[right] = s[right], s[left]
  end
end

# -------- recursion -----------------
def helper(s, left, right)
  return s if left >= right
  s[left], s[right] = s[right], s[left]
  helper(left+1, right-1)
end

def reverse_string(s)
  helper(s, 0, s.length-1)
end
# ------------------------------------
