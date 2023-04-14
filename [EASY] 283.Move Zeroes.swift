class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var zeroCount = 0
        nums = nums.filter { number in
            if number == 0 {
                zeroCount += 1
                return false
            }
            return true
        }
        
        var i = 0
        while i < zeroCount {
            nums.append(0)

            i += 1
        }
    }
}

var solution = Solution()
var array = [0,1,0,3,12]
solution.moveZeroes(&array)
print(array)
