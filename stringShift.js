var stringShift = function(s, shift) {
  s = s.split("");
  shift.forEach((instructions) => {
    let direction = instructions[0];
    let moveCount = instructions[1];
    if (direction === 0) {
      chars = s.splice(0, moveCount);
      s = s.concat(chars);
    } else {
      chars = s.splice(-moveCount, moveCount);
      s = chars.concat(s);
    }
  });
  return s.join("");
}
