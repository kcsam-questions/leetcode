def two_sum(nums, target)
  (0).upto(nums.length-1).each do |i|
    (i+1).upto(nums.length-1).each do |j|
      next if i == j
      return [i, j] if nums[i] + nums[j] == target
    end
  end
end

def two_sum(nums, target)
  hash = nums.map.with_index { |x,i| [i, x]}.to_h

  (0).upto(nums.length-1).each do |i|
    val = target - hash[i]
    # This check make it faster
    next unless hash.value?(val)
    j = hash.select { |k,v| v == val && k != i }.keys[0]
    return [i, j] if j
  end
end


def two_sum(nums, target)
  hash = {}
  (0).upto(nums.length-1).each do |i|
    hash[i] = nums[i]
    val = target - hash[i]
    next unless hash.value?(val)
    j = hash.select { |k,v| v == val && k != i }.keys[0]
    return [i, j] if j
  end
end

def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |num, i|
    diff = target - num
    if hash[diff]
      return [i, hash[diff]]
    else
      hash[num] = i
    end
  end
end
