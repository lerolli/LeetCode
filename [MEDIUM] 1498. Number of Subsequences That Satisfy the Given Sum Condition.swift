class Solution {
    func numSubseq(_ nums: [Int], _ target: Int) -> Int {
        let nums = nums.sorted()
        var left = 0
        var right = nums.count - 1

        var result = 0

        var pre = Array(repeating: 1, count: nums.count)
        for i in 1..<nums.count {
            pre[i] = (pre[i - 1] * 2) % 1_000_000_007
        }

        while left <= right {
            if nums[left] + nums[right] > target {
                right -= 1
            } else {
                result += pre[right - left]
                result %= 1_000_000_007
                left += 1
            }
        }
        return result   
    }
}