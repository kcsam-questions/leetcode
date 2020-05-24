def search(nums, target)
  i = 0
  while i < nums.length
    return i if nums[i] == target
    i += 1
  end

  -1
end

def search(nums, target)
  nums.index(target) || -1
end

# Interesting Questions
# https://stackoverflow.com/questions/4773807/searching-in-a-sorted-and-rotated-array
def search(nums, target)
  left = 0
  right = nums.length - 1

  # We know we must be at the point where
  # left/right half is sorted. 
  while left <= right
    mid = (left+right)/2
    return mid if nums[mid] == target

    # left half is sorted
    if nums[mid] >= nums[0]

      # Find the target -- if the target is between nums[0] && nums[mid] ==> search the left
      if nums[0] <= target && target < nums[mid]
        right = mid - 1
      else
        left = mid + 1
      end

    # right half is sorted
    else
      # Find the target -- if the target is between nums[mid] && nums[-1] ==> search the right
      if nums[mid] < target && target <= nums[-1]
        left = mid + 1
      else
        right = mid - 1
      end
    end

  end
  -1
end
