# Time limit exceed
def lcs(text1, text2, m, n)
  return 0 if m.zero? || n.zero?

  if text1[m - 1] == text2[n - 1]
    lcs(text1, text2, m - 1, n - 1) + 1
  else
    [lcs(text1, text2, m - 1, n), lcs(text1, text2, m, n - 1)].max
  end
end

def longest_common_subsequence(text1, text2)
  lcs(text1, text2, text1.length, text2.length)
end

# ===================================================
def longest_common_subsequence(text1, text2)
  m = text1.length
  n = text2.length

  dp = Array.new(m+1) { Array.new(n+1) }

  (0..m).each do |i|
    (0..n).each do |j|
      if i.zero? || j.zero?
        dp[i][j] = 0
      elsif text1[i-1] == text2[j-1]
        dp[i][j] = dp[i-1][j-1] + 1
      else
        dp[i][j] = [dp[i-1][j], dp[i][j-1]].max
      end
    end
  end

  dp[m][n]
end
