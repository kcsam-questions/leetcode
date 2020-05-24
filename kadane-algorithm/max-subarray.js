// Kadane's algorithm
// https://medium.com/@rsinghal757/kadanes-algorithm-dynamic-programming-how-and-why-does-it-work-3fd8849ed73d
// https://hackernoon.com/kadanes-algorithm-explained-50316f4fd8a6
var max_sub_array = function(nums) {
  let n = nums.length;
  let localMax = nums[0];
  let globalMax = localMax;

  for (let i=1; i<n; i++) {
    // Decide whether to start the subarray in this index
    // or continue the previous index
    localMax = Math.max(nums[i], localMax + nums[i]);
    globalMax = Math.max(localMax, globalMax);
  }

  return globalMax;
}
