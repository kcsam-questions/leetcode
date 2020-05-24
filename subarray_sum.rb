# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def subarray_sum(nums, k)
  sumdict = {0: 1}
  count = 0
  s = 0

  nums.each do |num|
    s += num
    if sumdict[s - k]
      count += sumdict[s - k]
    end

    if sumdict[s]
      sumdict[s] += 1
    else
      sumdict[s] = 1
    end
  end

  count
end
