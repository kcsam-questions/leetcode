# @param {Character[][]} matrix
# @return {Integer}
def maximal_square(matrix)
  return 0 if matrix.empty?
  m = matrix.length

  return 0 unless matrix[0].is_a?(Array)
  n = matrix[0].length

  dp = Array.new(m) { Array.new(n) }

  (0..m-1).each do |i|
    (0..n-1).each do |j|
      if i.zero? || j.zero?
        dp[i][j] = matrix[i][j].to_i
      elsif matrix[i][j] == "1"
        dp[i][j] = [dp[i-1][j-1], dp[i-1][j], dp[i][j-1]].min + 1
      else
        dp[i][j] = 0
      end
    end
  end

  side = dp.flatten.max
  side * side
end
