# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
# https://www.geeksforgeeks.org/diameter-of-a-binary-tree/
def height(node)
  return 0 if node.nil?

  1 + [height(node.left), height(node.right)].max
end

def diameter_of_binary_tree(root)
  return 0 if root.nil?

  lheight = height(root.left)
  rheight = height(root.right)

  ldiameter = diameter_of_binary_tree(root.left)
  rdiameter = diameter_of_binary_tree(root.right)

  [(lheight + rheight + 1), [ldiameter, rdiameter].max].max
end
