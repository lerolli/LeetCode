class Solution {
    func validateStackSequences(_ pushed: [Int], _ popped: [Int]) -> Bool {
        var pushedIndex = 1
        var poppedIndex = 0
        var stack: [Int] = []
        stack.append(pushed[0])
        while pushedIndex < pushed.count || poppedIndex < popped.count {
            if poppedIndex >= popped.count {
                return false
            }
            if (stack.last ?? -12) == popped[poppedIndex] {
                stack.removeLast()
                poppedIndex += 1
            } else if pushedIndex < pushed.count {
                stack.append(pushed[pushedIndex])
                pushedIndex += 1
            } else {
                return false
            }
        }
        return stack.isEmpty
    }
}

var solution = Solution()
print(solution.validateStackSequences([1,0], [1, 0]))