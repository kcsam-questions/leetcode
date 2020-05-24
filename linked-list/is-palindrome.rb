def is_palindrome(head)
  return true if head.nil? || head.next.nil?

  node = head
  arr = []
  while node
    arr << node.val
    node = node.next
  end

  len = arr.length

  i = 0
  j = len-1

  while i < j
    return false if arr[i] != arr[j]
    i += 1
    j -= 1
  end

  true
end
