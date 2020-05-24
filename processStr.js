var processStr = function(str) {
  let newArr = [];
  for (let i = 0; i < str.length; i++) {
    if (str[i] == '#') {
      newArr.pop();
    } else {
      newArr.push(str[i])
    }
  }
  return newArr.join();
};

var backspaceCompare = function(S, T) {
  return processStr(S) === processStr(T);
};
