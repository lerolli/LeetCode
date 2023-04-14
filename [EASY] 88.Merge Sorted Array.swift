class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var newNum1 = nums1.dropLast(nums1.count - m)
        var newNum2 = nums2.dropLast(nums2.count - n)
        
        nums1 = (newNum1 + newNum2).sorted(by: <)
    }
}

let solution = Solution()
//var nums1 = [1,2,3]
//var nums2 = [1,2,3, 4, 5]
var nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
solution.merge(&nums1, m, nums2, n)
print(nums1)
