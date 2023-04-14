class Solution {
    func numEnclaves(_ grid: [[Int]]) -> Int {
        var grid = grid
        var m = grid.count
        var n = (grid.first ?? []).count
        
        for i in 0..<m {
            for j in 0..<n {
                if ((i == 0 || j == 0 || i == m - 1 || j == n - 1) && grid[i][j] == 1) {
                    dfs(&grid, i, j)
                }
            }
        }
        return grid.reduce(0) { sum, row in sum + row.reduce(0, +)}
    }

    private func dfs(_ grid: inout [[Int]], _ i: Int, _ j: Int) {
        grid[i][j] = 0
        let directions = [(0,1),(0,-1),(-1,0), (1,0)]
        
        for direction in directions {
            let x = i + direction.0
            let y = j + direction.1
            if x >= 0 && x < grid.count && y > 0 && y < grid[0].count && grid[x][y] == 1 {
                dfs(&grid, x, y)
            }
        }
    }
}
