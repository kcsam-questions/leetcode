# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @param {Integer[]} arr
# @return {Boolean}
def check_path(root, arr, idx)
  return false if root.nil? || idx == arr.length

  return true if root.left.nil? && root.right.nil? && arr[-1] == root.val

  root.val == arr[idx] && (check_path(root.left, arr, idx + 1) || check_path(root.right, arr, idx + 1))
end

def is_valid_sequence(root, arr)
  check_path(root, arr, 0)
end
