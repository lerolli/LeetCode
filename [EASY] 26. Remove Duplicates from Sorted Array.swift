class Solution {
    func removeDuplicates_slow(_ nums: inout [Int]) -> Int {
        var tempNumber = nums.first ?? 0
        nums = Array(Set(nums)).sorted()
        return nums.count
    }
    
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var result: [Int] = []
        
        var currentNumber = nums[0]
        result.append(nums[0])
        for i in 1..<nums.count {
            if nums[i] != currentNumber {
                currentNumber = nums[i]
                result.append(nums[i])
            }
        }
        nums = result
        return nums.count
    }
}