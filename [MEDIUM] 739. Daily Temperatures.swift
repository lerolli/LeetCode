final class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var result: [Int] = [Int](repeating: 0, count: temperatures.count)
        var stack: [Int] = []
        
        for i in 0..<temperatures.count {
            while !stack.isEmpty && temperatures[stack.last!] < temperatures[i] {
                let index = stack.removeLast()
                result[index] = i - index
            }
            stack.append(i)
        }

        return result
    }
}

print(Solution().dailyTemperatures([1,2,3]))