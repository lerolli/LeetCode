class Solution {
    func maxValueOfCoins(_ piles: [[Int]], _ k: Int) -> Int {
        var sum = 0
        var memo: [[Int]] = Array(repeating: Array(repeating: 0, count: k + 1), count: piles.count + 1)

        return dp(piles, &memo, 0, k);
    }

    func dp(_ piles: [[Int]], _ memo: inout [[Int]], _ i: Int, _ k: Int) -> Int {
        if k == 0 || i == piles.count  {
            return 0
        }
        if memo[i][k] != 0 { 
            return memo[i][k]
        }

        var res = dp(piles, &memo, i + 1, k);
        var cur = 0;

        for j in 0..<min(piles[i].count, k) {
            cur += piles[i][j]
            res = max(res, cur + dp(piles, &memo, i + 1, k - j - 1));
        }
        memo[i][k] = res
        return res
    }
}