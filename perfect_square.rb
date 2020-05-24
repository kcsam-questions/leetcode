# @param {Integer} num
# @return {Boolean}
$perfect_square = [1]

def build_perfect_square(num)
  i = $perfect_square.length + 1

  while i * i <= num
    $perfect_square << i * i
    i += 1
  end
end

def is_perfect_square(num)
  return false if num <= 0
  return true if num == 1

  build_perfect_square(num) if $perfect_square.last < num

  $perfect_square.include? num
end
