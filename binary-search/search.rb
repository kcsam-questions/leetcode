# without binary search
def search(nums, target)
  len = nums.length
  (0..len-1).each do |i|
    return -1 if target < nums[i]

    # compared beginning
    return i if nums[i] == target

    # compared end
    j = len - 1 - i

    break if i >= j
    return j if nums[j] == target
    return -1 if target > nums[j]
  end

  -1
end

def search(nums, target)
  left = 0
  right = nums.length - 1
  mid = (left+right)/2

  while left <= right
    mid = (left+right)/2
    return mid if nums[mid] == target

    if nums[mid] > target
      right = mid - 1
    else
      left = mid + 1
    end
  end

  -1
end
