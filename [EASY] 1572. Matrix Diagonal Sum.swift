class Solution {
    func diagonalSum(_ mat: [[Int]]) -> Int {
        var i = 0
        var j = 0
        var sum = 0
        while i < mat.count {
            sum += mat[i][j]
            i += 1
            j += 1
        }

        i = 0
        j = mat.count - 1
        while i < mat.count {
            if i != j {
                sum += mat[i][j]
            }
            i += 1
            j -= 1
        }

        return sum
    }
    
}

print(Solution().diagonalSum([[1,2,3],[4,5,6],[7,8,9]]))