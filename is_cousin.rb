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
# @param {Integer} x
# @param {Integer} y
# @return {Boolean}
def level(root, level, x)
  return 0 unless root

  return level if root.val == x

  level += 1

  ans = level(root.left, level + 1, x)

  return ans if ans.positive?

  level(root.right, level + 1, x)
end

def is_sibling?(root, x, y)
  return false if root.nil?

  (root.left&.val == x && root.right&.val == y) ||
    (root.right&.val == x && root.left&.val == y) ||
    is_sibling?(root.left, x, y) ||
    is_sibling?(root.right, x, y)
end

def is_cousins(root, x, y)
  !is_sibling?(root, x, y) && level(root, 1, x) == level(root, 1, y)
end
