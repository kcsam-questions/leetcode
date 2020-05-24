# ===================== Exceed Time limit =====================================
def find_island_idx(arr, coordinate)
  arr.each_with_index do |island, idx|
    return idx if island.include?(coordinate)
  end
  -1
end

def num_islands(grid)
  island_map = []

  grid.each_with_index do |row, row_idx|
    row.each_with_index do |elem, idx|
      next if elem == '0'

      previous_element = grid[row_idx][idx - 1]
      # for first row
      if row_idx.zero?
        if idx.zero? || previous_element == '0'
          island_map << [[row_idx, idx]]
        else
          island_idx = find_island_idx(island_map, [row_idx, idx - 1])
          island_map[island_idx] << [row_idx, idx]
        end
        next
      end

      # for subsequent row
      # for first elem
      top_element = grid[row_idx - 1][idx]
      if idx.zero?
        # check the elem on top
        if top_element == '0'
          island_map << [[row_idx, idx]]
        else
          island_idx = find_island_idx(island_map, [row_idx - 1, idx])
          island_map[island_idx] << [row_idx, idx]
        end
        next
      end

      # for other elem, check the previous element + top element
      if previous_element == '0' && top_element == '0'
        island_map << [[row_idx, idx]]
      elsif previous_element == '1' && top_element == '1'
        previous_idx = find_island_idx(island_map, [row_idx, idx - 1])
        top_idx = find_island_idx(island_map, [row_idx - 1, idx])

        if previous_idx == top_idx
          island_map[previous_idx] << [row_idx, idx]
        else
          island_map[previous_idx].concat(island_map[top_idx])
          island_map[previous_idx] << [row_idx, idx]
          island_map.delete_at(top_idx)
        end
      else
        coordinate = previous_element == '1' ? [row_idx, idx - 1] : [row_idx - 1, idx]
        island_idx = find_island_idx(island_map, coordinate)
        island_map[island_idx] << [row_idx, idx]
      end
    end
  end
  p island_map
  island_map.count
end
# ===================== Exceed Time limit =====================================

def turn_zero(grid, i, j)
  return if i.negative? ||
            j.negative? ||
            i >= grid.length ||
            j >= grid[0].length ||
            grid[i][j] == '0'

  grid[i][j] = '0'

  turn_zero(grid, i - 1, j)
  turn_zero(grid, i, j - 1)
  turn_zero(grid, i + 1, j)
  turn_zero(grid, i, j + 1)
end

def num_islands(grid)
  return 0 if grid.nil? || grid.empty?

  count = 0
  grid.each_with_index do |row, i|
    row.each_with_index do |elem, j|
      next if elem == '0'

      count += 1
      turn_zero(grid, i, j)
    end
  end
  count
end
