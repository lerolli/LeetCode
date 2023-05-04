class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        var rotateMatrix = [[Int]]()
        for i in 0..<matrix.count {
            var row = [Int]()
            for j in (0..<matrix.count).reversed() {
                row.append(matrix[j][i])
            }
            rotateMatrix.append(row)
        }
        matrix = rotateMatrix
    }
}