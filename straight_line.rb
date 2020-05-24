# @param {Integer[][]} coordinates
# @return {Boolean}
def slope(a, b)
  return 0 if (b[0] - a[0]).zero?
  (b[1] - a[1]) / (b[0] - a[0])
end

def check_straight_line(coordinates)
  return true if coordinates.length == 2
  return false if coordinates.length < 2

  ref = slope(coordinates[0], coordinates[1])

  i = 1
  while i < coordinates.length
    return false if slope(coordinates[i - 1], coordinates[i]) != ref

    i += 1
  end

  true
end
