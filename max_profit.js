var maxProfit = function (prices) {
  let profits = 0;
  let diff = 0;

  for (let i = 1; i < prices.length; i++) {
    diff = prices[i] - prices[i - 1];
    if (diff > 0) {
      profits += diff;
    }
  }

  return profits;
};
