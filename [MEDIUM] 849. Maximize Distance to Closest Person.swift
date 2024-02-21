class Solution {
    func maxDistToClosest(_ seats: [Int]) -> Int {
        guard seats.count > 1 else {
            return 0
        }

        var freeCount = 0
        var maxCount = 0
        var isFirstTry = true


        for i in 0..<seats.count {
            if seats[i] == 0 {
                freeCount += 1
                continue
            }

            if isFirstTry && seats[0] == 0 {
                maxCount = max(maxCount, freeCount)
            } else {
                maxCount = max(maxCount, Int((Double(freeCount) / 2).rounded(.toNearestOrAwayFromZero)))
            }
            isFirstTry = false
            freeCount = 0
        }

        if freeCount != 0 {
            maxCount = max(maxCount, freeCount)
        }
        return maxCount
    }
}


print(Solution().maxDistToClosest([1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1])) // -> 3
print(Solution().maxDistToClosest([1, 0, 0, 0, 1])) // -> 2
print(Solution().maxDistToClosest([1])) // -> 0
print(Solution().maxDistToClosest([0, 1])) // -> 1
print(Solution().maxDistToClosest([])) // -> 0
print(Solution().maxDistToClosest([1, 1])) // -> 0
print(Solution().maxDistToClosest([1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0])) // -> 6
print(Solution().maxDistToClosest([0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1])) // -> 6
print(Solution().maxDistToClosest([1,0,0,1])) // -> 2
