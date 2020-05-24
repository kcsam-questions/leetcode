var findMaxLength = function(nums) {
  let modifiedNums = nums.map(i => i === 0 ? -1 : i);
  let cum = 0;
  let maxLength = 0;
  let hash = {};

  for (i = 0; i < modifiedNums.length; i++) {
    cum += modifiedNums[i];

    if (cum === 0) {
      maxLength = i + 1;
    }

    if (hash.hasOwnProperty(cum)) {
      maxLength = Math.max(i - hash[cum], maxLength)
    } else {
      hash[cum] = i;
    }
  }

  return maxLength;
};
