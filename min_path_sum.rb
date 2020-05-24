# @param {Integer[][]} grid
# @return {Integer}
def min_path_sum(grid)
  m = grid.length
  n = grid[0].length

  dp = Array.new(m) { Array.new(n) }
  dp[0][0] = grid[0][0]

  grid.each_with_index do |row, i|
    row.each_with_index do |elem, j|
      dp[i][j] = elem

      if i.positive? && j.positive?
        dp[i][j] += [dp[i-1][j], dp[i][j-1]].min
      elsif i.positive?
        dp[i][j] += dp[i-1][j]
      elsif j.positive?
        dp[i][j] += dp[i][j-1]
      end
    end
  end

  dp[m-1][n-1]
end
