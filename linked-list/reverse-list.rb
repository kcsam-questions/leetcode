def reverse_list(head)
  prev = nil
  current = head

  loop do
    break if current.nil?
    next_target = current.next
    current.next = prev

    prev = current
    current = next_target
  end

  prev
end

def reverse_list(head)
  node = head
  arr = []
  while !node.nil?
    arr << node
    node = node.next
  end

  arr.reverse!.each_with_index do |node, idx|
    node.next = arr[idx+1]
  end

  arr[0]
end
