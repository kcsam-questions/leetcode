# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  dict = {}
  max = 0

  nums.each do |num|
    dict[num] ||= 0
    dict[num] += 1
  end

  max = dict.values.max

  dict.key(max)
end
