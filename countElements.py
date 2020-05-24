class Solution:
    def countElements(self, arr: List[int]) -> int:
        dict = {}
        for int in arr:
            if int in dict:
                dict[int] = dict[int] + 1
            else:
                dict[int] = 1

        sum = 0
        for key, val in dict.items():
            if (key + 1) in dict:
                sum += val

        return sum
