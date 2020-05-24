def valid_set?(set)
  num_row = set.select { |x| x != "." }
  num_row.length == num_row.uniq.length
end

def valid_rows?(board)
  # Check row
  board.each do |row|
    return false unless valid_set?(row)
  end
  true
end

def valid_columns?(board)
  # check column
  board.transpose.each do |col|
    return false unless valid_set?(col)
  end
  true
end

def valid_grids?(board)
  # check grid
  [0,3,6].each do |i_interval|
    [0,3,6].each do |j_interval|
      grid = []
      (0).upto(2).each do |i|
        (0).upto(2).each do |j|
          grid << board[i+i_interval][j+j_interval]
        end
      end
      return false unless valid_set?(grid)
    end
  end
  true
end

def is_valid_sudoku(board)
  valid_rows?(board) && valid_columns?(board) && valid_grids?(board)
end
