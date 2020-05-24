# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {Integer[]} preorder
# @return {TreeNode}

# l: starting index for left nodes
# r: starting index for right nodes

def build_tree(preorder, l, r)
  return nil if l > r

  root_value = preorder[l]
  root = TreeNode.new(root_value)
  return root if l == r

  idx = l + 1
  # idx <= r: idx can't be larger than the existing array value
  # preorder[idx] < root_value: find the first value
  while idx <= r && preorder[idx] < root_value
    idx += 1
  end

  # l+1: have proceed l, so proceed to the next index
  # idx: starting index for the right nodes
  # idx-1: idx is the first index of right nodes,
  # idx-1 is the end of the left nodes
  root.left = build_tree(preorder, l+1, idx-1)
  root.right = build_tree(preorder, idx, r)

  root
end

def bst_from_preorder(preorder)
  build_tree(preorder, 0, preorder.length - 1)
end
