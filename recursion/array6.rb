def array6(nums, idx)
  return false if idx == nums.length
  return true if nums[idx] == 6
  array6(nums, idx+1)
end
