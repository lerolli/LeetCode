class Solution {
    func maxUncrossedLines(_ nums1: [Int], _ nums2: [Int]) -> Int {
        var memo = [String: Int]()
        func rec(_ i: Int, _ j: Int) -> Int {
            let key = "\(i),\(j)"
            guard memo[key] == nil else { return memo[key]! }
            guard i >= 0, j >= 0 else { return 0 }
            memo[key] = max(
                nums1[i] == nums2[j] ? 1 + rec(i - 1, j - 1) : 0,
                rec(i - 1, j),
                rec(i, j - 1)
            )
            return memo[key]!
        }
        return rec(nums1.count - 1, nums2.count - 1)
    }
}