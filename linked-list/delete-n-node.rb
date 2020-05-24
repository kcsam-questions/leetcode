def remove_nth_from_end(head, n)
  length = 1
  node = head

  loop do
    node = node.next
    break if node.nil?
    length += 1
  end

  chosen_idx = length - n

  # Remove head case
  if chosen_idx < 1
    if head.next.nil?
      head.val = nil
    else
      head = head.next
    end
  else
    idx = 1
    node = head

    loop do
      break if idx == chosen_idx
      node = node.next
      idx += 1
    end

    node.next = node.next.next
  end

  head
end

# ---------- Use array to collect -----------

def remove_nth_from_end(head, n)
  arr = []
  node = head

  while node != nil
    arr << node
    node = node.next
  end

  len = arr.length
  idx_before_del = len - n - 1

  if idx_before_del < 0
    head = head.next
  else
    node = arr[idx_before_del]
    node.next = node.next.next
  end

  head
end

# ---------------------------------
# Use two pointers
def remove_nth_from_end(head, n)
  first = head
  second = head

  # Maintain a fixed distance between first and second
  gap = 0
  loop do
    break if gap == n
    first = first.next
    gap += 1
  end

  if first.nil?
    head = head.next
    return head
  end

  loop do
    first = first.next
    break if first == nil
    second = second.next
  end

  second.next = second.next.next

  head
end
