var validPath = function(root, arr, idx) {
  if (!root || arr.length === idx) {
    return false;
  }

  if (!root.left && !root.right && root.val === arr[arr.length - 1]) {
    return true;
  }

  return root.val === arr[idx] && (validPath(root.left, arr, idx + 1) || validPath(root.right, arr, idx + 1));
}

var isValidSequence = function(root, arr) {
  return validPath(root, arr, 0);
};
