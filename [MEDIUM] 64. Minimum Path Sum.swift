class Solution {
    func minPathSum(_ grid: [[Int]]) -> Int {
        var matrix = grid
        let n = matrix.count
        let m = (matrix.first ?? []).count

        for i in 0..<n {
            for j in 0..<m {
                if i > 0 && j > 0 {
                    matrix[i][j] += min(matrix[i - 1][j], matrix[i][j - 1])
                } else if i == 0 && j > 0 {
                    matrix[i][j] = matrix[i][j] + matrix[i][j - 1]
                }  else if j == 0 && i > 0 {
                    matrix[i][j] = matrix[i][j] + matrix[i - 1][j]
                }
            }
        }
        return matrix[n - 1][m - 1]
    }
}