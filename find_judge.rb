def find_judge(n, trust)
  return 1 if trust.empty? && n == 1

  records = {}

  trust.each do |info|
    records[info[0]] ||= []
    records[info[0]] << info[1]
  end

  common_vals = records.values.inject(:&)

  return -1 if common_vals.empty?
  return -1 if common_vals.length > 1

  return common_vals[0] if records[common_vals[0]].nil?

  -1
end

## Better solutions

def find_judge(n, trust)
  degree = Array.new(n+1, 0)

  trust.each do |a, b|
    degree[a] -= 1
    degree[b] += 1
  end

  p degree
  degree.select { |deg| return deg if deg == n - 1 }

  -1
end
