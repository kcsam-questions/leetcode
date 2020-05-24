def contains_duplicate(nums)
  nums.uniq.length != nums.length
end

def contains_duplicate(nums)
  nums.sort!
  (0..nums.length-1).each do |idx|
    return true if nums[idx] == nums[idx+1]
  end
end

def contains_duplicate(nums)
  hash = {}
  nums.each do |num|
    hash[num] ||= 0
    hash[num] += 1
    return true if hash[num] >= 2
  end
  false
end
