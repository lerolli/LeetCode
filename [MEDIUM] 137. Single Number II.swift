class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var containsNumber: [Int: Int] = [:]
        for number in nums {
            if containsNumber[number] != nil {
                containsNumber[number]! += 1
            } else {
                containsNumber[number] = 1
            }
        }
        print(containsNumber)
        for (key, value) in containsNumber {
            if value == 1 {
                return key
            }
        }
        return 0
    }
}

print(Solution().singleNumber([2,2,3,2]))