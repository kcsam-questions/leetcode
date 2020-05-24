# Given an integer array nums,
# find the contiguous subarray (containing at least one number)
# which has the largest sum and return its sum.
# Input: [-2,1,-3,4,-1,2,1,-5,4],
# Output: 6
# Explanation: [4,-1,2,1] has the largest sum = 6.
# Contiguous subarray is defined by an interval of the indices:
# a first and last element and everything between them.

# Kadane's algorithm
# https://medium.com/@rsinghal757/kadanes-algorithm-dynamic-programming-how-and-why-does-it-work-3fd8849ed73d
# https://hackernoon.com/kadanes-algorithm-explained-50316f4fd8a6
def max_sub_array(nums)
  n = nums.size
  local_max = nums[0]
  global_max = local_max

  (1..n-1).each do |i|
    # Decide whether to start the subarray in this index
    # or continue the previous index
    local_max = [nums[i], local_max + nums[i]].max
    global_max = [local_max, global_max].max
  end

  global_max
end
