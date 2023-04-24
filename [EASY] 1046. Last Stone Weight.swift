class Solution {
    func lastStoneWeight(_ stones: [Int]) -> Int {
        var stones = stones
        while stones.count > 1 {
            stones.sort()
            let last = stones.removeLast()
            let prev = stones.removeLast()
            if last != prev {
                stones.append(last - prev)
            }
        }
        return stones.first ?? 0
    }
}