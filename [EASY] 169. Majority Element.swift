class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var dictionary: [Int: Int] = [:]

        for element in nums {
            dictionary[element] = (dictionary[element] ?? 0) + 1
        }       
        
        for key, value in dictionary {
            if value > nums.count / 2 {
                return key
            }
        }

        return -1
    }
}