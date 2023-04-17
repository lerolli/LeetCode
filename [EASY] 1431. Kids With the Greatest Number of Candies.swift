class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        var maxCandies = candies.max() ?? 0
        return candies.map { $0 + extraCandies >= maxCandies}
    }
}