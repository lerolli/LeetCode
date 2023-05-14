class Solution {
    func countGoodStrings(_ low: Int, _ high: Int, _ zero: Int, _ one: Int) -> Int {
        var cache = [Int: Int]()
        
        func dfs(_ length: Int) -> Int {
            if length > high {return 0}
            if let val = cache[length] {return val}

            var res = length >= low ? 1 : 0
            res += dfs(length + zero) + dfs(length + one) 
            cache[length] = res
            return res % Int(1e9+7)
        }
        return dfs(0) 

        
    }
}