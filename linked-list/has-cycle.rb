# undone
def has_cycle(head)
  return false if head.nil?
  hash = {}

  while head
    if hash[head]
      return true
    else
      hash[head] = head
    end

    head = head.next
  end

  return false
end
