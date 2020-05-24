# s = string, shift = shift instructions
# direction can be 0 (for left shift) or 1 (for right shift).
# amount is the amount by which string s is to be shifted.
def string_shift(s, shift)
  s = s.split('')
  shift.each do |ins|
    direction = ins[0]
    amount = ins[1]

    # left => remove from the beginning
    if direction.zero?
      chars = s.slice!(0, amount)
      s = s.concat(chars)
    # right => remove from the end
    else
      chars = s.slice!(-amount, amount)
      s = chars.concat(s)
    end
  end

  s.join
end

def string_shift(s, shift)
  shift.each do |ins|
    direction = ins[0]
    amount = ins[1]

    # left => remove from the beginning
    if direction.zero?
      chars = s.slice!(0..amount - 1)
      s += chars
    # right => remove from the end
    else
      chars = s.slice!(-amount..-1)
      s = chars + s
    end
  end

  s
end

def string_shift(s, shift)
  move_count = 0

  shift.each do |ins|
    # left => remove from the beginning
    # right => remove from the end
    ins[0].zero? ? move_count += ins[1] : move_count -= ins[1]
  end

  return s if move_count.zero?

  move_count %= s.length

  if move_count.positive?
    chars = s.slice!(0..move_count - 1)
    s += chars
  else
    chars = s.slice!(move_count..-1)
    s = chars + s
  end
  s
end

def string_shift(s, shift)
  move_count = shift.reduce(0) do |accum, ins|
    # left => remove from the beginning
    # right => remove from the end
    ins[0].zero? ? accum + ins[1] : accum - ins[1]
  end

  return s if move_count.zero?

  move_count %= s.length

  if move_count.positive?
    chars = s.slice!(0..move_count - 1)
    s += chars
  else
    chars = s.slice!(move_count..-1)
    s = chars + s
  end
  s
end
