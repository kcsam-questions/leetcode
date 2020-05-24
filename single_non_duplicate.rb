# @param {Integer[]} nums
# @return {Integer}
def single_non_duplicate(nums)
  dict = {}
  nums.each do |i|
    dict[i] ||= 0
    dict[i] += 1
  end

  dict.key(1)
end

# ^ copies the bit if it is set in one operand but not both
def single_non_duplicate(nums)
  nums.inject(0) { |accum, i| accum ^ i }
end
