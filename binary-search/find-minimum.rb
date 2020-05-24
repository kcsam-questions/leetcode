def find_minimum(nums)
  left = 0
  right = nums.length - 1

  while left < right
    mid = (left+right)/2

    # left sorted
    if nums[mid] >= nums[0]
      # the minimum is on the right if leftest is higher than the rightest
      if nums[0] > nums[-1]
        left = mid + 1
      else
        right = mid
      end

    # right sorted
    else
      # the number is on the left/this is the number itself
      if nums[0] > nums[-1]
        right = mid
      else
        left = mid + 1
      end
    end

  end
  nums[right]
end
