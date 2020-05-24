class Solution:
    def processStr(self, str: str) -> str:
        newArr = []

        for char in str.split(""):
            if char == '#':
                newArr.pop()
            else:
                newArr.append(char)

        return "".join(newArr)

    def backspaceCompare(self, S: str, T: str) -> bool:
        return processStr(S) == processStr(T)
