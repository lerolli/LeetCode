class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var count = 0
        for number in nums.sorted() {
            if count == number {
                count += 1
            } else {
                return count
            }
        }
        return count
    }
}

print(Solution().missingNumber([0,1]))