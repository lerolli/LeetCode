class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var result: [Int] = []
        
        var currentNumber = nums[0]
        var countDublicate = 1
        result.append(nums[0])
        for i in 1..<nums.count {
            if nums[i] != currentNumber {
                currentNumber = nums[i]
                result.append(nums[i])
                countDublicate = 1
            } else if countDublicate < 2 {
                result.append(nums[i])
                countDublicate += 1 
            }
        }
        nums = result
        return nums.count
    }
}

var nums = [1,1,1,2,2,3]
var _ = Solution().removeDuplicates(&nums)
print(nums)
