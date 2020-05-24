class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        profit = 0
        ranges = range(len(prices) - 1)

        for i in ranges:
            diff = prices[i+1] - prices[i]
            if diff > 0:
                profit += diff

        return profit
