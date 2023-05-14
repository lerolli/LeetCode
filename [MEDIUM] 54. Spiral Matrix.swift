enum Directions: Int {
    case right = 0
    case down
    case left
    case up
}

class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        let allCount = matrix.count * (matrix.first?.count ?? 0)
        let m = matrix.count
        let n = matrix.first?.count ?? 0
        var i = 0
        var j = 0
        
        var spiralOrder: [Int] = []    
        
        var direction: Directions = .right
        var visited = Array(repeating: Array(repeating: false, count: n), count: m)

        while spiralOrder.count < allCount {
            if !visited[i][j] {
                spiralOrder.append(matrix[i][j])
                visited[i][j] = true      
            }
            if spiralOrder.count == allCount {
                return spiralOrder
            }
            
            switch direction {
            case .right:
                if j + 1 < n && !visited[i][j + 1] {
                    j += 1
                } else {
                    direction = .down
                }
            case .down:
                if i + 1 < m && !visited[i + 1][j] {
                    i += 1
                } else {
                    direction = .left
                }
                
            case .left:
                if j - 1 >= 0 && !visited[i][j - 1] {
                    j -= 1
                } else {
                    direction = .up
                }
            case .up:
                if i - 1 >= 0 && !visited[i - 1][j] {
                    i -= 1
                } else {
                    direction = .right
                }
            }
        }
        return spiralOrder
    }
}

print(Solution().spiralOrder([[3],[2]]))

