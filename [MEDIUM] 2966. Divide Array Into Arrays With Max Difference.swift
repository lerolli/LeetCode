class Solution {
    func divideArray(_ nums: [Int], _ k: Int) -> [[Int]] {
        if nums.count % 3 != 0 {
            return []
        }

        var nums = nums
        nums.sort()
        
        var result: [[Int]] = []
        var i = 0
        
        while i < nums.count - 2 {
            let numberOne = nums[i]
            let numberTwo = nums[i + 1]
            let numberThree = nums[i + 2]

            if abs(numberTwo - numberOne) > k {
                return []
            }

            if abs(numberThree - numberOne) > k {
                return []
            }

            if abs(numberThree - numberTwo) > k {
                return []
            }

            result.append([numberOne, numberTwo, numberThree])
            i += 3
        }
        return result
    }
}

print(Solution().divideArray([1,3,4,8,7,9,3,5,1], 2))