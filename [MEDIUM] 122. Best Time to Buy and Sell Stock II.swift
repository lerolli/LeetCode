class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var best = 0
        var curent = 0
        
        for i in 1..<prices.count {
            curent = max(0, curent + prices[i] - prices[i - 1])
            if curent > 0 {
                best += curent
                curent = 0
            }
        }
        return best
    }
}

print(Solution().maxProfit([7,1,5,3,6,4]))