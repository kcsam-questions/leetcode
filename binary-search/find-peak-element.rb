def find_peak_element(nums)
  (0).upto(nums.length-1).each do |i|
    return i if nums[i+1] < nums[i]
  end
end


def find_peak_element(nums)
  left = 0
  right = nums.length - 1

  while left < right
    mid = (left + right) / 2

    if nums[mid] > nums[mid+1]
      right = mid
    else
      left = mid + 1
    end

  end
  left
end
