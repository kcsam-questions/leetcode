def merge_two_lists(l1, l2)
  node = l1
  arr = []

  while !node.nil?
    arr << node
    node = node.next
  end

  node = l2

  while !node.nil?
    arr << node
    node = node.next
  end

  arr.sort! { |x, y| x.val <=> y.val }

  arr.each_with_index do |node, idx|
    node.next = arr[idx+1]
  end

  arr[0]
end
