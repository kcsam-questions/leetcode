def first_bad_version(n)
  left = 0
  right = n.length - 1
  mid = (left+right)/2

  while left != right
    mid = (left+right)/2

    if is_bad_version(mid)
      right = mid
    else
      left = mid + 1
    end
  end

  left
end
