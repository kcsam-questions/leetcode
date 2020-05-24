def middle_node(head)
  nodes = []
  until head.nil?
    nodes << head
    head = head.next
  end

  length = nodes.length
  middle = length.odd? ? (length + 1) / 2 : (length / 2) + 1

  nodes[middle - 1]
end

# Two pointers method
def middle_node(head)
  fast = slow = head

  # fast pointer is moving 2x faster than slow.
  # when fast reach the end, slow is at the middle
  while fast&.next
    slow = slow.next
    fast = fast.next.next
  end

  slow
end
