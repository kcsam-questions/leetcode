# Exceed time limit
def find_max_length(nums)
  max_length = 0
  nums = nums.map { |num| num.zero? ? -1 : num }
  nums.each_with_index do |_, i|
    sum = 0
    (i..nums.length - 1).each do |j|
      # val = nums[j].zero? ? -1 : nums[j]
      sum += val
      if sum.zero?
        subarr_max = j - i + 1
        max_length = [max_length, subarr_max].max
      end
    end
  end

  max_length
end

def find_max_length(nums)
  max_length = 0
  cum = 0
  hash = {}
  nums = nums.map { |num| num.zero? ? -1 : num }
  nums.each_with_index do |num, i|
    cum += num

    # max_length which start_index = 0
    max_length = i + 1 if cum.zero?

    # If there is similar cumulative, that means there is new zero subarray
    # (array which is not start from the 0 index)
    if hash[cum]
      max_length = [i - hash[cum], max_length].max
    else
      hash[cum] = i
    end
    puts "max_length: #{max_length}"
    puts "hash: #{hash}"
  end
  max_length
end
