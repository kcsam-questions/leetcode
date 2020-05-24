# This does not change in place
def rotate(matrix)
  matrix.replace matrix.transpose.map!(&:reverse)
end

def rotate(matrix)
  n = matrix.length
  i = 0
  while i < n
    j = i + 1
    while j < n
      matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]
      j += 1
    end
    i += 1
  end

  matrix.map!(&:reverse)
end
