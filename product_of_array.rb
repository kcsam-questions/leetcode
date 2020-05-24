# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  left_multiply = [1]
  right_multiply = [1]

  nums[0..-2].each do |num|
    left_multiply << left_multiply[-1] * num
  end

  nums.reverse[0..-2].each do |num|
    right_multiply << right_multiply[-1] * num
  end

  right_multiply.reverse!
  left_multiply.zip(right_multiply).map { |x, y| x * y }
end
