class Solution {
    // - Complexity:
    //   - time: O(n), where n is the length of the nums.
    //   - space: O(1), only constant space is used.

    func canJump(_ nums: [Int]) -> Bool {
        var reach = 0
        var i = 0

        while i <= reach {
            reach = max(reach, i + nums[i])
            i += 1
            if reach >= nums.count - 1 { return true }
        }

        return false
    }

}