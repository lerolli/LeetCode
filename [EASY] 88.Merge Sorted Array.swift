class Solution {
    func merge_slow(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var newNum1 = nums1.dropLast(nums1.count - m)
        var newNum2 = nums2.dropLast(nums2.count - n)
        
        nums1 = (newNum1 + newNum2).sorted(by: <)
    }

    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var result: [Int] = []
        var i = 0
        var j = 0
        while i < m || j < n {
            if i >= m {
                result.append(nums2[j])
                j += 1
                continue
            }

            if j >= n {
                result.append(nums1[i])
                i += 1
                continue
            }


            if nums1[i] < nums2[j] {
                result.append(nums1[i])
                i += 1
            } else {
                result.append(nums2[j])
                j += 1
            }
        }
        nums1 = result
    }
}

let solution = Solution()
//var nums1 = [1,2,3]
//var nums2 = [1,2,3, 4, 5]
var nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
solution.merge(&nums1, m, nums2, n)
print(nums1)
