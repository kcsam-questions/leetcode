def hamming_distance(x,y)
  if y > x
    max, min = y, x
  else
    max, min = x, y
  end
    max = max.to_s(2).reverse.chars
    min = min.to_s(2).reverse.chars

  count = 0
  max.each_with_index do |n, i|
    compared = min[i] || '0'
    next if n == compared
    count += 1
  end

  count
end
