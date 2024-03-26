class Solution {
    func findDuplicates(_ nums: [Int]) -> [Int] {
        var dublicates: [Int: Int] = [:]

        for num in nums {
            dublicates[num] = (dublicates[num] ?? 0) + 1
        }

        return dublicates.filter { $0.value > 1 }.map { $0.key }
    }
}

print(Solution().findDuplicates([1,1,1,2,3,4]))
