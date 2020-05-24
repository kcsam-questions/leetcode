# Not in place
def move_zeroes(nums)
  len = nums.length
  nums -= [0]
  no_of_zeroes = len - nums.length
  nums += [0] * no_of_zeroes
end


# ----------- Fastest ---------------------
def move_zeroes(nums)
  len = nums.length
  zero_count = 0

  (0).upto(len-1).each do |idx|
    if nums[idx] == 0
      zero_count += 1
    else
      nums[idx], nums[idx-zero_count] = nums[idx-zero_count], nums[idx]
    end
  end
  nums
end
# -----------------------------------------

# -----------------------------------------
def move_zeroes(nums)
  len = nums.length
  zero_count = 0
  idx = 0

  loop do
    break if idx > len - 1
    if nums[idx] == 0
      zero_count += 1
    else
      nums[idx], nums[idx-zero_count] = nums[idx-zero_count], nums[idx]
    end
    idx += 1
  end
  nums
end
# -----------------------------------------
