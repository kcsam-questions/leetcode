# Work but exceed time limit
def single_number(nums)
  nums.uniq.each do |val|
    return val if nums.count(val) == 1
  end
end

# WORK!
def single_number(nums)
  hash = {}
  nums.each do |val|
    hash[val] ||= 0
    hash[val] += 1
  end

  return hash.key(1)
end

# Work but exceed time limit
def single_number(nums)
  no_duplicate_list = []

  nums.each do |val|
    if no_duplicate_list.include?(val)
      nums -= [val]
    else
      no_duplicate_list << val
    end
  end

  nums[0]
end
