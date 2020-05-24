def group_sum6(start, nums, target)
  puts "start: #{start}, nums: #{nums}, target: #{target}"
  return true if target == 0
  return false if start >= nums.length

  # This is the path that take in everything in the array
  return true if group_sum6(start+1, nums, target - nums[start])

  return false if nums[start] == 6
  group_sum6(start+1, nums, target)
end
