class Solution {
    func longestSubarray(_ nums: [Int]) -> Int {
        var count = 0
        if nums.first(where: {$0 == 0}) == nil {
            return nums.count - 1
        }

        for i in 0..<nums.count {
            if nums[i] == 1 { continue }

            var j = 1
            var leftIsZero = false
            var rightIsZero = false
            var tempCount = 0
            while true {
                defer {
                    count = max(tempCount, count)
                }

                if leftIsZero && rightIsZero {
                    break
                }

                if i - j >= 0 && !leftIsZero && nums[i - j] == 1 {
                    tempCount += 1
                } else {
                    leftIsZero = true
                }
                
                if i + j < nums.count && !rightIsZero && nums[i + j] == 1 {
                    tempCount += 1
                } else {
                    rightIsZero = true
                }
                j += 1
            }
        }
        return count
    }
}

print(Solution().longestSubarray([0,1,1,1,0,1,1,0,1]))