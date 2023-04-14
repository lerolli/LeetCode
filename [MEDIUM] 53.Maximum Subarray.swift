class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var i = 0
        var sum = 0
        var answer = nums.first ?? 0
        
        for number in nums {
            sum = max(number, sum + number)
            answer = max(answer, sum)
        }
        return answer
    }
}

let solution = Solution()
solution.maxSubArray([-2,1,-3,4,-1,2,1,-5,4])
