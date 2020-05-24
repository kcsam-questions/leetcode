var singleNumber = function (nums) {
  let hash = {};

  nums.forEach(function(i, idx) {
    hash[i] = hash[i] || 0;
    hash[i] += 1;
  });

  return Object.keys(hash).filter(key => hash[key] === 1);
}
