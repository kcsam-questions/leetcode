var majority_element = function(nums) {
  const dict = new Map();
  let max = 0;
  let ans = null;

  nums.forEach(function(num) {
    if (!dict[num]) {
      dict[num] = 0;
    }
    dict[num] += 1;
  });

  Object.keys(dict).forEach(function(key) {
    if (dict[key] > max) {
      max = dict[key];
      ans = key;
    }
  });

  return ans;
}
