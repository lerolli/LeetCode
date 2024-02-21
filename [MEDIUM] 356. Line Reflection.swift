/*
Given n points on a 2D plane, find if there is such a line parallel 
to y-axis that reflect the given points.

Example 1: Given points = [[1,1],[-1,1]], return true.

Example 2: Given points = [[1,1],[-1,-1]], return false.

Follow up: Could you do better than O(n2)?

(-6, 6) -> 12 -> 0
(-1, 1) -> 2 -> 0

(0, 0) -> 0



       .   |    .
   .       |          .
           |
     .     |     .

  .         
 . .
.   .


*/


struct Point {
  let x: Int
  let y: Int
}

func isReflected(_ pointsArray: [[Int]]) -> Bool {
  guard pointsArray.count > 1 else {
    return true
  }
  let points = pointsArray.map { Point(x: $0[0], y: $0[1]) }

  var maxX = points[0].x
  var minX = points[0].x 

  for point in points {
    maxX = max(point.x, maxX)
    minX = min(point.x, minX)
  }

  let medium: Double = Double(maxX - minX) / 2

  var leftPoints: [Point] = []
  var rightPoints: [Point] = []
  
  for point in points {
    if Double(point.x) < medium {
      leftPoints.append(point)
      continue
    }

    if Double(point.x) > medium {
      rightPoints.append(point)
    }
  }

  if leftPoints.count != rightPoints.count {
    return false
  }

  leftPoints = leftPoints.sorted { $0.y < $1.y }
  rightPoints = rightPoints.sorted { $0.y < $1.y }

  for i in 0..<leftPoints.count {
    if leftPoints[i].y != rightPoints[i].y {
      return false
    }
  }

  return true
}

assert(isReflected([[0, 0], [0, 0], [1, 1], [2, 2], [3, 1], [4, 0], [4, 0]]) == true)
assert(isReflected([[0, 0], [0, 0], [1, 1], [2, 2], [3, 1], [4, 0]]) == false)
assert(isReflected([]) == true)
assert(isReflected([[0, 0]]) == true)
assert(isReflected([[0, 0], [10, 0]]) == true)
assert(isReflected([[0, 0], [11, 1]]) == false)
assert(isReflected([[0, 0], [1, 0], [3, 0]]) == false)