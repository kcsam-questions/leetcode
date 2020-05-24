# @param {String}
def check_valid_string(s)
  parenthesis = []
  stars = []

  s.split('').each_with_index do |char, idx|
    case char
    when '('
      parenthesis << idx
    when ')'
      if parenthesis.length.positive?
        parenthesis.pop
      elsif stars.length.positive?
        stars.pop
      else
        return false
      end
    when '*'
      stars << idx
    end
  end

  return true if parenthesis.empty?

  parenthesis.each do |elem|
    return false if stars.empty?

    val = stars.find { |num| num > elem }
    return false if val.nil?

    stars = stars[stars.index(val) + 1..-1]
  end

  true
end
