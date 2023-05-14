enum Directions: Int {
    case right = 0
    case down
    case left
    case up
}

class Solution {
    func generateMatrix(_ n: Int) -> [[Int]] {
        var matrix = Array(repeating: Array(repeating: 0, count: n), count: n)
        var i = 0
        var j = 0
        var value = 1
        var direction: Directions = .right

        while value <= n*n {
            if matrix[i][j] == 0 {
                matrix[i][j] = value
                value += 1
            }
            
            switch direction {
            case .right:
                if j + 1 < n && matrix[i][j + 1] == 0 {
                    j += 1
                } else {
                    direction = .down
                }
            case .down:
                if i + 1 < n && matrix[i + 1][j] == 0 {
                    i += 1
                } else {
                    direction = .left
                }
            case .left:
                if j - 1 >= 0 && matrix[i][j - 1] == 0 {
                    j -= 1
                } else {
                    direction = .up
                }
            case .up:
                if i - 1 >= 0 && matrix[i - 1][j] == 0 {
                    i -= 1
                } else {
                    direction = .right
                }
            }
        }
        return matrix
    }
}

print(Solution().generateMatrix(3))