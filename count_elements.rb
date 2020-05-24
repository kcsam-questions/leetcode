def count_elements(arr)
  dict = {}
  arr.each { |i| dict[i] = dict[i] ? dict[i] + 1 : 1 }

  sum = 0
  dict.each_pair do |key, val|
    sum += val if dict[key+1]
  end

  sum
end
