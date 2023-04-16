class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var newNums = nums
        for i in 1..<nums.count {
            newNums[i] += newNums[i - 1]
        }
        return newNums
    }
}