const isHappy = function(n) {
  if (n === 1) {
    return true
  }

  let sumHash = {};
  let sum = n;

  while (sum !== 1) {
    sum = Array.from(String(sum), Number).reduce((accum, i) => accum += i * i, 0);

    if (sumHash.hasOwnProperty(sum)) {
      return false;
    }

    sumHash[sum] = 1;
  }

  return true;
}
