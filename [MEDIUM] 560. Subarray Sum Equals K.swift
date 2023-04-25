// MARK: - leetcode.com/problems/subarray-sum-equals-k/
// TODO: - Перерешать через месяц
class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var cumulativeSum = 0
        var sumCount = [Int: Int]()
        sumCount[cumulativeSum] = 1
        
        var countToReturn = 0
        
        for num in nums {
            cumulativeSum += num
            
            // order matters below
            // i.e., if (2) came before (1), this would fail for k = 0

            // (1)
            let result = cumulativeSum - k
            if let count = sumCount[result] {
                countToReturn += count
            }            
            // (2)
            if let count = sumCount[cumulativeSum] {
                sumCount[cumulativeSum] = count + 1
            } else {
                sumCount[cumulativeSum] = 1
            }
        }
        
        return countToReturn
    }
}