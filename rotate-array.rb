# This solution does not modify nums array
def rotate_array(nums, k)
  nums[-k..-1] + nums[0..nums.length-k-1]
end

def rotate_array(nums, k)
  len = nums.length
  return nums if len == 1

  k = k % len if k > len

  copy = nums.dup

  new_idxs = [*-k..-1]
  new_idxs += [*0..[len-k-1,0].max] if new_idxs.length != len

  new_idxs.each_with_index do |new_idx, idx|
    nums[idx] = copy[new_idx]
  end

  nums
end

def rotate_array(nums, k)
  len = nums.length
  copy = nums.dup

  copy.each_with_index do |val, idx|
    new_idx = (idx + k) % len
    nums[new_idx] = val
  end

  nums
end

def rotate_array(nums, k)
  k %=  nums.length
  cut = nums.slice!(-k..-1)
  nums.unshift(*cut)
end

# ----- Reverse ---------------
def reverse(arr, start_idx=0, last_idx=arr.length-1)
  (start_idx..last_idx).each_with_index do |current_idx, idx|
    break if current_idx >= last_idx-idx
    arr[current_idx], arr[last_idx-idx] = arr[last_idx-idx], arr[current_idx]
  end
  arr
end

def rotate_array(nums, k)
  reverse(nums)
  k %= nums.length
  reverse(nums, 0, k-1)
  reverse(nums, k, nums.length-1)
end

# -----------------------------
# -------- cyclic -------------
#
def rotate_array(nums, k)
  k %= nums.length
  count = 0

  (0..nums.length-1).each do |start_idx|
    next_idx = nil
    current_idx = start_idx
    current_num = nums[current_idx]

    while next_idx != start_idx
      next_idx = (current_idx+k)%nums.length
      next_num = nums[next_idx]

      nums[next_idx] = current_num

      count += 1
      return nums if count == nums.length

      current_idx = next_idx
      current_num = next_num
    end
  end
end

# -----------------------------
