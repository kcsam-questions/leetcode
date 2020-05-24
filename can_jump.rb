def can_jump(nums)
  n = nums.length
  return true if n <= 1

  last_point = n - 1
  (n - 1).downto(0).each do |i|
    last_point = i if i + nums[i] >= last_point
  end

  last_point.zero?
end
