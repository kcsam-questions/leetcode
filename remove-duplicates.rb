# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return [] if nums.length == 0
  nums = (nums[0] == nums[1] ? [] : [nums[0]]) + remove_duplicates(nums[1..-1])
end

# Two pointer solution
# i is the slow-runner while j is the fast-runner
# As long as nums[i] = nums[j], we increment j to skip the duplicate.
#
#
# this solution return the new length,
# so the caller knows how many elements he can use in the front of array and
# ignore the elements after the new length.
def remove_duplicates(nums)
  i = 0

  (i+1..nums.length-1).each do |j|
    next if nums[i] == nums[j]

    i += 1
    nums[i] = nums[j]
  end

  i + 1
end
