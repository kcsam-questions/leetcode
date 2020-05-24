# guess is predefined api
def guess_number(num)
  left = 0
  right = num

  while left <= right
    mid = (left + right) / 2
    reply = guess(mid)

    if reply == 0
      return mid
    # number is higher than target
    elsif reply == 1
      right = mid - 1
    # number is lower than target
    elsif reply == -1
      left = mid + 1
    end
  end

  mid
end
