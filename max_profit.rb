# Find the minimum point first
# Then find the next maximum point
def max_profit(prices)
  profits = 0
  (1..prices.length-1).each do |idx|
    diff = prices[idx] - prices[idx-1]
    profits += diff if diff.positive?
  end

  profits
end
