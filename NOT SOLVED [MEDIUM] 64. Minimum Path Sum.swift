struct Point {
    let x: Int
    let y: Int
    let price: Int
}

extension Point: Hashable {
    static func == (lhs: Point, rhs: Point) -> Bool {
            return lhs.x == rhs.x && lhs.y == rhs.y
        }

        func hash(into hasher: inout Hasher) {
            hasher.combine(x)
            hasher.combine(y)
        }
}

class Solution {
    func minPathSum(_ grid: [[Int]]) -> Int {
        var notVisited: [Point] = []
        var minPath: [Point: Int] = [:]
        
        var currentPoint = Point(
            x: 0,
            y: 0,
            price: 0
        )
        
        var endPoint = Point(
            x: grid[grid.count - 1].count,
            y: grid.count - 1,
            count: grid[grid.count - 1][grid.count - 1]

        while true {
            if currentPoint == endPoint {
                break
            }
                
            if currentPoint.x + 1 < grid[currentPoint.y].count {
                var neighborPoint = Point()
                minPath[neighborPoint] =
            }
        }
        return 0
    }
}

var solution = Solution()
solution.minPathSum([[1,2,3],[4,5,6]])
