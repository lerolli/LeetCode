/*

     j i
[1,2,3,0,5]




*/

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        for i in 0..<nums.count {
            if nums[i] != 0 {
                continue
            } 
            
            var j = i
            print(nums, j)
            while j < nums.count - 1  {
                nums[j] = nums[j + 1]
                nums[j + 1] = 0
                j += 1
            }
        }
    }
}

var array = [0,0,1]
Solution().moveZeroes(&array)
print(array)