class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        Set(nums).count != nums.count
    }
}

var solution = Solution()
solution.containsDuplicate([1,2,3])
