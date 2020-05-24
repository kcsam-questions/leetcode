def my_sqrt(x)
  left = 0
  right = x

  while left <= right
    mid = (left+right)/2

    # When the ans is in between two integer
    if (mid) ** 2 <= x && x < (mid+1) ** 2
      return mid
    end

    if mid * mid < x
      left = mid + 1
    else
      right = mid - 1
    end
  end

  mid
end
