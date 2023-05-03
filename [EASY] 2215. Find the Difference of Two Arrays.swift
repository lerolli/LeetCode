class Solution {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        var num1Missing = Array(Set(nums1.filter({ !nums2.contains($0) })))
        var num2Missing = Array(Set(nums2.filter({ !nums1.contains($0) })))
        
        return [num1Missing, num2Missing]
    }
}