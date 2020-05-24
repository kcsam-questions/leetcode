# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}


# https://www.geeksforgeeks.org/rearrange-a-linked-list-such-that-all-even-and-odd-positioned-nodes-are-together/
def odd_even_list(head)
  return nil if head.nil?

  odd = head
  even = head.next

  # remember the first node, so we can connect back
  even_first = even

  loop do
    # if there are no more nodes,
    # connect the last odd node to the even node
    if odd.nil? || even.nil? || even.next.nil?
      odd.next = even_first
      break
    end

    # Connecting odd nodes
    odd.next = even.next
    odd = even.next

    # If there are no more even nodes after current odd nodes
    if odd.next.nil?
      even.next = nil
      odd.next = even_first
      break
    end

    # Connecting even nodes
    even.next = odd.next
    even = odd.next
  end

  head
end
