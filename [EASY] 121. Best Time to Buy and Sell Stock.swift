class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var best = 0
        var curent = 0
        
        for i in 1..<prices.count {
            curent = max(0, curent + prices[i] - prices[i - 1])
            best = max(curent, best)
        }
        return best
    }
}