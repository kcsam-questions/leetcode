var moveZeroes = function(nums) {
  let zeroCount = 0;
  for (let idx=0; idx<nums.length; idx++) {
    if (nums[idx] === 0) {
      zeroCount++;
    } else {
      [nums[idx-zeroCount], nums[idx]] = [nums[idx], nums[idx-zeroCount]]
    }
  }
  return nums;
}
