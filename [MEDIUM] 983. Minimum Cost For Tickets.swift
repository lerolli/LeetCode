class Solution {
    func mincostTickets(_ days: [Int], _ costs: [Int]) -> Int {
        let days = Set(days)
        var dp = Array(repeating: 0, count: 366)
        
        for i in 1...365 {
            if days.contains(i) {
                dp[i] = min(
                    dp[i - 1] + costs[0],
                    dp[max(0, i - 7)] + costs[1],
                    dp[max(0, i - 30)] + costs[2]
                )
            } else {
                dp[i] = dp[i - 1]
            }
        }

        return dp[365]
    }
}
