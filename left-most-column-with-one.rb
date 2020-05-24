# """
# This is BinaryMatrix's API interface.
# You should not implement it, or speculate about its implementation
# """
# class BinaryMatrix
# 	def get(x, y)
# 		@return {Integer}
# 	end
#
# 	def dimensions()
# 		@return {List[Integer]}
# 	end
# end

# @param {BinaryMatrix} binaryMatrix
# @return {Integer}
def leftMostColumnWithOne(binaryMatrix)
  return unless binaryMatrix

  rows, = binaryMatrix.dimensions
  row = 0
  col = rows - 1
  ans = -1

  while row < rows && col >= 0
    if binaryMatrix.get(row, col) == 1
      ans = col
      col -= 1
    else
      row += 1
    end
  end

  ans
end
