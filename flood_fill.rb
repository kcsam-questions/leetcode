# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} new_color
# @return {Integer[][]}

def fill(image, sr, sc, new_color, old_color, dp)
  return image if sr.negative? || sr >= image.length || sc.negative?
  return image if !image[0].empty? && sc >= image[0].length
  return image if image[sr][sc] != old_color

  dp[sr][sc] = new_color
  image[sr][sc] = -1

  fill(image, sr - 1, sc, new_color, old_color, dp)
  fill(image, sr, sc - 1, new_color, old_color, dp)
  fill(image, sr + 1, sc, new_color, old_color, dp)
  fill(image, sr, sc + 1, new_color, old_color, dp)

  dp
end

def flood_fill(image, sr, sc, new_color)
  # dp = Array.new(image.length) { Array.new(image[0].length) }
  #
  # image.each_with_index do |elem, row|
  #   elem.each_with_index do |_, col|
  #     dp[row][col] = image[row][col]
  #   end
  # end
  return image if image[sr][sc] == new_color

  dp = image.map(&:clone)

  fill(image, sr, sc, new_color, image[sr][sc], dp)
end
