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
