class Solution {
    func findTheWinner(_ n: Int, _ k: Int) -> Int {
        var arr: [Int] = Array(1...n)
        var n = n
        var i = 0
        while arr.count > 1 {
            i = (i + k - 1) % n
            arr.remove(at: i)
            n -= 1
        }
        return arr.first ?? -1   
    }
}

print(Solution().findTheWinner(6, 5))